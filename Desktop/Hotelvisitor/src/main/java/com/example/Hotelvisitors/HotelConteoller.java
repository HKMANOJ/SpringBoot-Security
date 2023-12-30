 package com.example.Hotelvisitors;
 

import java.util.List;





import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.Hotelvisitors.users.InterfacUserService;
import com.example.Hotelvisitors.users.User;
import com.example.Hotelvisitors.users.UserDTO;
import com.example.Hotelvisitors.users.UserRepository;
import com.example.Hotelvisitors.validation.Validation;



@Controller
public class HotelConteoller {
	
	public final String REPLACE="redirect:/lists";
	
	@Autowired
	private UserRepository repo;
	
	
	



	//	@Autowired
//	private BCryptPasswordEncoder passencoder;
	@Autowired
	private InterfacUserService ser;
	
	@Autowired
	private UserRepository rp;
	
	

	private static org.slf4j.Logger log=LoggerFactory.getLogger(HotelConteoller.class);

	
	@Autowired
	private HotelService service;
	
	private InterfacUserService userservice;
	
	
	public HotelConteoller(InterfacUserService userservice) {
	
		this.userservice = userservice;
	}

	@RequestMapping("/")
	public String home()	{
	
		log.info("Home Page Loaded");
		return "index.jsp";
	}

	@RequestMapping("/admin")
	public String adminpage()
	{
		
		log.info("Admin Login Page Is Loded");
		return "adminlogin.jsp";
	}
	
	@RequestMapping("/login")
	public String view( @Valid @ModelAttribute ("user") Validation v ,BindingResult br) throws Exception{
		
		if(br.hasErrors()) {
			log.error("Error while login");
			return "redirect:/admin";
		}
		
		log.info("successfully login to site");
		return REPLACE;
	}
	
	@RequestMapping("/register")
	public String showRegistrationForm(Model model) {
	    model.addAttribute("users", new User());
	     log.info("Register successfully");
	    return "NewFile.jsp";
	}

	//@PreAuthorize("hasAnyRole ('ROLE USER') ")
	@RequestMapping(value="/saves",method= RequestMethod.POST)
	public ModelAndView saveOrUpdate(@ModelAttribute("user" )UserDTO user) {
	ser.saveData(user);
	return new ModelAndView("redirect:/log");
	}
	
	
//	@RequestMapping("/log")
//	public String loginuser(@ModelAttribute("user") User user, HttpServletRequest request) {
//		log.info("user login");
//		try {
//			user=repo.findByName("username");
//		} catch (Exception e) {
//			System.out.println("Not Found......!");
//			return ("redirect:/log");
//		}
//		return "newlogin.jsp";
//	}

	@RequestMapping("/log")
	public String Userloginhome(User user)	{
		//log.info("error"+rp.findByName("?"));
		log.info("successfully login to site",user.getName());
		return "userlogin.jsp";
	}
	
	@RequestMapping("/userhome")
	public String Userhome()	{
	
		log.info("User Home Page Loaded");
		return "BookHotel.jsp";
	}
	
	@RequestMapping("/Useraddform")
	public String UserAddform() {
		return "Useraddform.jsp";
		
	}
	@RequestMapping(value="/savee",method = RequestMethod.POST)
	public ModelAndView saveUserEntry(@ModelAttribute HotelDTO fruit){
		service.saveOrUpdate(fruit);
		log.info("there update method is running");
		return new ModelAndView("redirect:/userhome");
	}
	@RequestMapping("/lists")
	public  String getAll(Model m) {
		List<Hotel>lit=service.getallvisitors();
		m.addAttribute("list", lit);
		log.info("log on to view page");
		return "fruitview.jsp";	
	}
	
	@RequestMapping("/addnew")
	public String addnewrow()
	{
		log.info("Adding the elements to the project");
		return "addform.jsp";
	}
	@RequestMapping("/eror")
	public String error()
	{
		log.info("Adding the elements to the project");
		return "Errormsg.jsp";
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView saveFruit(@ModelAttribute HotelDTO fruit){
		service.saveOrUpdate(fruit);
		log.info("there update method is running");
		return new ModelAndView(REPLACE);
	}
	
	@RequestMapping("/deletebyid/{id}")
	public ModelAndView delete(@PathVariable("id") int id)
	{
		service.deleteHotelVisitor(id);
		log.info("The Delete option take place by Id");
		return new ModelAndView(REPLACE);
	}
	
	
	@RequestMapping("/updateEntry")
	@ResponseBody
	public ModelAndView updateCourse(@RequestParam("hid")int id)
	{
		
		 Hotel hr=service.getHotelVisitorsById(id);
		log.info("Update method Is running");
		 return  new ModelAndView("updates.jsp","fruits",hr);
		 
	}



}
