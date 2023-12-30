 <%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login</title>
    </head>
    <style>
    .help-block {
        color: #ff0000;
    }
    </style>
    <body>

        <h1>Login</h1>

        <c:if test="${not empty message}">
                        <div class="row">

                            <div class="col-md-offset-3 col-md-6">

                                <div class="alert alert-danger">${message}</div>

                            </div>
                        </div>

                    </c:if>
                    <c:if test="${not empty logout}">
                        <div class="row">

                            <div class="col-md-offset-3 col-md-6">

                                <div class="alert alert-success">${logout}</div>

                            </div>
                        </div>

                    </c:if>
        <form action="log" method="post" id="loginform">
            <input type="text" name="name" placeholder="Enter name" /><br/>
            <input type="password" name="password" placeholder="Enter password" /><br/>
            <button type="submit">Login</button>
            <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
        </form>

        <a href="${contextRoot}/register">Register</a>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js"></script>
        <script>
            $(function(){
                const $loginForm = $("#log");

                if($loginForm.length){

                    $loginForm.validate({

                        rules: {

                            name: {
                                required: true
                            },

                            password: {
                                required: true
                            }
                        },

                        messages: {

                            name: {
                                required: "Please enter name"
                            },

                            password: {
                                required: "Please enter password"
                            }
                        },
                        errorElement: 'em',
                        errorPlacement: function(error, element) {
                            error.addClass('help-block');
                            error.insertAfter(element);
                        }

                    })

                }
            })
        </script>
    </body>
    </html>