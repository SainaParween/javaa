<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    

<html lang="en">
    
<head>
	<title>Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="image/imageslogin/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/vendorloginlogin/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/fontslogin/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/fontslogin/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/vendorloginlogin/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/vendorlogin/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/vendorlogin/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/vendorlogin/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/vendorlogin/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/cssregis/util.css">
	<link rel="stylesheet" type="text/css" href="css/cssregis/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form:form action="registration"  method="post" modelAttribute="userdetails"  class="login100-form validate-form" role="from">
								<div ><a class="ind" href="/">Back to home</a></div><br>
					<span class="login100-form-title p-b-26">
						Welcome, Register Here
					</span>
					<span align="center" ><h3 style="color: red">${messageerror}</h3></span>
					<span align="center" ><h3 style="color: green">${messagesuccess}</h3></span>
                    <div class="wrap-input100 validate-input" data-validate = "Enter Character Only">
						<form:input path="fname" class="input100" type="text" name="fname" />
						<span class="focus-input100" data-placeholder="First Name"></span>
					</div>
                    
                    <div class="wrap-input100" >
						<form:input path="mname" class="input100" type="text" name="mname" />
						<span class="focus-input100" data-placeholder="Middle Name"></span>
					</div>
                    
                    <div class="wrap-input100 validate-input" data-validate = "Enter Character Only">
						<form:input path="lname" class="input100" type="text" name="lname" />
						<span class="focus-input100" data-placeholder="Last Name"></span>
					</div>       
                    
                    <div class="wrap-input100 validate-input" data-validate = "Enter Valid phone number">
						<form:input path="phone" class="input100" type="number" name="phone" />
						<span class="focus-input100" data-placeholder="Phone Number"></span>
					</div>
                    <div class="wrap-input100 validate-input" data-validate = "Valid Institute Name">
						<form:input path="institute" class="input100" type="text" name="institute" />
						<span class="focus-input100" data-placeholder="Institute"></span>
					</div>
                    <div class="wrap-input100 " >						
				        <form:select id="role" class="input100" path="role"  >
                            <option>Teacher</option>
                            <option>Student</option>
                        </form:select>
                        
					</div>
                    <div class="wrap-input100 validate-input" data-validate = "Valid email Id">
						<form:input path="email" class="input100" type="email" name="email" />
						<span class="focus-input100" data-placeholder="Email ID"></span>
					</div>


					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<form:input path="password" class="input100" type="password" name="pass" />
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<form:button class="login100-form-btn">
								Register
							</form:button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							 Have an account?
						</span>

						<a class="txt2" href="login">
							Sign In
						</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	

<!--	<div id="dropDownSelect1"></div>-->
	
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/bootstrap/js/popper.js"></script>
	<script src="vendor/vendorlogin/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/daterangepicker/moment.min.js"></script>
	<script src="vendor/vendorlogin/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/vendorlogin/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/jslogin/main.js"></script>

</body>
</html>