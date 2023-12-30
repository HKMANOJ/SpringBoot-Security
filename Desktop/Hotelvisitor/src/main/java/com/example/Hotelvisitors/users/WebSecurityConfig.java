package com.example.Hotelvisitors.users;




import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	 @Autowired
	    private DataSource dataSource;
	
	@Autowired
		CustomUserDetailsService customerservice;
	 
//	@Autowired
//	private PasswordEncoder passwordEncoder;
	 @Bean
	    public UserDetailsService userDetailsService() {
	        return new CustomUserDetailsService();
	    }

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	 
//	 @Autowired
//	 public void configureglobal(AuthenticationManagerBuilder auth) throws Exception{
//		 auth.userDetailsService(customerservice);
//	 }

	 @Bean
	    public DaoAuthenticationProvider authenticationProvider() {
	        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
	        authProvider.setUserDetailsService(userDetailsService());
	        authProvider.setPasswordEncoder(passwordEncoder());

	        return authProvider;
	    }

//	    @Override
//	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//	        auth.authenticationProvider(authenticationProvider());
//	    }

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		 http.csrf().disable()
         .authorizeRequests()
             .antMatchers("**").permitAll()
             .anyRequest().authenticated()
             .and()
         .formLogin()
             .loginPage("/log") // Customize login page URL if needed
             .loginProcessingUrl("/log")
             .defaultSuccessUrl("/userhome")
             .usernameParameter("name")
             .passwordParameter("password")
		 .and()
         .logout()
             .logoutUrl("/eror")
             .permitAll();
		 
		
//		  http.csrf().disable()
//          .authorizeRequests()
//          .antMatchers("/").permitAll()
//          .antMatchers("/log").permitAll()
//          .antMatchers("/register").permitAll()
//          .antMatchers("/savee").permitAll()
//          .antMatchers("/saves").permitAll()
//          
//          .anyRequest().authenticated().and().csrf().disable().formLogin()
//          .loginPage("/log")//.failureUrl("/login?error=true")
//          .defaultSuccessUrl("/userhome")
//          .usernameParameter("name")
//          .passwordParameter("password")
//          .and().exceptionHandling().accessDeniedPage("/403");
//		 
 }
	
}
