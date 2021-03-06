<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <title>Prep-UP</title>
   <!-- <link rel="stylesheet" href="style.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
   <style type="text/css">
   *{
    margin: 0;
    padding: 0;
    font-family: sans-serif;

}
body{
background-color: #15517a; }
.container{
    width: 100%;
    height:100%;
    background-color: #15517a; 
}
.menu ul{
    display: inline-flex;
    margin: 50px;
}
.menu ul li{
    list-style: none;
    margin: 0px 20px;
    color: aqua;
    cursor: pointer;
}
.logo img{
    width: 50px;
    height: auto;
    margin-top: -10px;
    margin-right: 60px;
}
.active{
    color: #19dafa !important;
}
.signupbtn {
    top: 40px;
    right: 80px;
    position: absolute;
    text-decoration: none;
    color: white;
    border: 2px solid transparent;
    border-radius: 20px;
    background-image: linear-gradient(#42455a,#42455a),radial-gradient(circle at top left,#fd00da,#19d7f8);
    background-origin: border-box;
    background-clip: content-box,border-box;
}
.signinbtn {
    top: 40px;
    right: 200px;
    position: absolute;
    text-decoration: none;
    color: #fff;
    border: 2px solid transparent;
    border-radius: 20px;
    background-image: linear-gradient(#42455a,#42455a),radial-gradient(circle at top left,#fd00da,#19d7f8);
    background-origin: border-box;
    background-clip: content-box,border-box;
}
.signinbtn  span{
    display: block;
    padding: 8px 22px;
}
.signupbtn  span{
    display: block;
    padding: 8px 22px;
}
.banner{
    width: 80%;
    height: 70%;
    top: 25%;
    left: 130px;
    position: absolute;
    color: white;
}

.apptext{
    width: 50%;
    float: left;
}
.apptext h1{
    font-size: 43px;
    width: 640px;
    position: relative;
    margin-left: 40px;
    color: #ffffff;
}
.apptext p{
    font-size: 15px;
    width: 650px;
    position: relative;
    margin:30px 0 30px 40px;
    line-height: 25px;
    color: #919191;
}

.apppic{
    width:50%;
    height: 100%;
    float: right;
    
}
.apppic img{
    width: 108%;
    height: 90%;
   
    margin-top: -50px;
    padding-left: 50px;
}

.play-btn{
    margin-left: 40px;
    display: inline-flex;
}
.play-btn-inner{
    height: 50px;
    width: 50px;
     border: 2px solid transparent;
    border-radius: 50%;
    background-image: linear-gradient(#42455a,#42455a),radial-gradient(circle at top left,#fd00da,#19d7f8);
    background-origin: border-box;
    background-clip: content-box,border-box;
}
.play-btn-inner .fa{
    padding: 18px 20px;
    font-size: 13px;
    cursor: pointer;
    text-align: center;
}
small{
    margin: auto 20px;
    cursor: pointer;
    font-size: 12px;
    color: #19dafa;
    letter-spacing: 3px;
}

.quick-links{
    left: -140px;
    bottom: -35px;
    width: 125.8%;
    position: absolute;
    background: #253264;
}
.quick-links ul{
    display: inline-flex;
    margin: 25px auto;
    text-align: center;
}
.quick-links ul li{
    list-style: none;
    margin: 0 50px;
    cursor: pointer;
}
   </style>
   </head>
   <body>
       <div class="container">
           <div class="menu">
               <ul>
                   <li class="logo"><img src="assets/images/favicon.png"></li>
               <li>Home</li>
                <li><a href="login" class="signinbtn"><span>Sign In</span></a></li>  
                <li><a href="registration" class="signupbtn"><span>Sign up</span></a></li> 
               </ul>
           </div>
           <div class="banner">
               <div class="apptext">
                   <h1>
                        e-Exam Platform for all
                   </h1>
                   <p>
                       Open source platform to conduct Test and<br> Exam for the Student by their teacher.
                   </p>
                   <div class="play-btn">
                       <div class="play-btn-inner">
                           <i class="fa fa-play" aria-hidden="true"></i>

                       </div>
                       <small><b>LEARN MORE</b></small>
                   </div>
               
               </div>
               <div class="apppic">
                   <img src="image/index.png" />
               
               </div>
               <div class="quick-links">
                   <ul>
                    
                    <li><i class="fa fa-facebook"><p>Prep-up</p></i></li>
                       <li><i class="fa fa-instagram"><p>Prep-up</p></i></li>
                       <li><i class="fa fa-whatsapp"><p>Prep-up</p></i></li>
                       <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li><li></li><li></li><li></li><li></li>
                       <li><i class="fa fa-copyright"><p align="right">Prep-UP 2020 ,All rights reserved. </p></i></li>
                       
                   </ul>
                   
                
               </div>
           </div>
       </div>
        
    
   </body>
   </html>