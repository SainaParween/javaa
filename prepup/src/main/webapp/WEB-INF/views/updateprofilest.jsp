<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>Prep-UP || Update Profile</title>
    <!-- Bootstrap Core CSS -->
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="Dashboard.html">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                         <!-- dark Logo text -->
                         <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <!-- Light Logo text -->    
                         <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>

                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/users/1.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right scale-up">
                                <ul class="dropdown-user">
                                    <li>
                                        <div class="dw-user-box"><center>
                                            <div class="u-img"><img src="assets/images/users/1.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h3>${userDetailsVO.fname}</h3>
                                                <p>Student </p>
<!--                                                 <p class="text-muted">Prep-Up</p> -->
                                        </div></center>
                                        </div>
                                    </li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="updateprofilest"><i class="ti-settings"></i>  Update Profile</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="changepasswordst"><i class="ti-settings"></i>  Change password</a></li>
                                    <li role="separator" class="divider"></li>
                                    
                                    <li><a href="#" alt="default" data-toggle="modal" data-target="#verticalcenter" ><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>






                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- User profile -->
                <div class="user-profile">
                    <!-- User profile image -->
                    <div class="profile-img"> <img src="assets/images/users/profile.png" alt="user" />
                        <!-- this is blinking heartbit-->

                    </div>
                    <!-- User profile text-->
                    <div class="profile-text">
                    <h3>${userDetailsVO.fname}</h3>
                        <h5>Student</h5>
           
                    </div>
                </div>
                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>

                        <li> <a class=" waves-effect waves-dark" href="studentDash" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Home </span></a>
                        </li>
                        <li> <a class=" waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-plus"></i><span class="hide-menu">Join Class </span></a>
                        </li>

                        <li> <a class=" waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-search"></i><span class="hide-menu">My Classes</span></a>
                        </li>
                        
                        <li> <a class=" waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Results</span></a>
                        </li>

                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor">Update Profile</h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="studentDash">Home</a></li>
                        <li class="breadcrumb-item">Update Profile</li>
                    </ol>
                </div>

            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">




                                <div id="verticalcenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="vcenter">Do you want to Sign out?</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                                            </div>
                                            <div class="modal-body">
                                                <h4></h4>
                                                <p></p>
                                            </div>
                                            <div  class="modal-footer">
                                            
                                                <a href="#" type="button" class="btn btn-danger waves-effect" >Sign out</a>
                                                <a href="#" type="button" class="btn btn-success waves-effect" data-dismiss="modal">Close</a>
                                            
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                
                                

                                <div class="row">
                    <div class="col-lg-12">
                        <div class="card card-outline-info">
                            <div class="card-header">
                                <center><h4 class="m-b-0 text-white">Update Profile</h4></center>
                            </div><br>
                            <center><span style="color: green"><h3>${messagesuccess}</h3></span>
                            <span style="color: red"><h3>${messageerror}</h3></span>
                            </center>
                            
                            <div class="card-body">
                                <form:form action="updateprofilest" method="post" modelAttribute="userdetails"  class="form-horizontal" role="form">
                                    <div class="form-body">
                                        <h3 class="box-title">Person Info</h3>
                                        <hr class="m-t-0 m-b-40">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">First Name</label>
                                                    <div class="col-md-9">
                                                    <form:input type="text" path="fname" name="fname" id="fname" class="form-control" value="${userDetailsVO.fname}" maxlength="30"  required="true" />
                                                         </div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group  row">
                                                    <label class="control-label text-right col-md-3">Middle Name</label>
                                                    <div class="col-md-9">
                                                        <form:input type="text" path="mname" name="mname" id="mname" class="form-control " value="${userDetailsVO.mname}" placeholder="" maxlength="30" />
                                                         </div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                            <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">Last Name</label>
                                                    <div class="col-md-9">
                                                    <form:input type="text" path="lname" name="lname" id="lname" class="form-control" value="${userDetailsVO.lname}" maxlength="30"  required="true" />
                                                         </div>
                                                </div>
                                            </div>
                                            <!--/span-->

                                            <!--/span-->
                                        </div>
                                        <!--/row-->

                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">Phone Number </label>
                                                    <div class="col-md-9">
                                                        <form:input type="number" path="phone" name="phone" id="phone" pattern="/d*" value="${userDetailsVO.phnumber}" min="4444444444" max="9999999999" class="form-control" required="true" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">Email ID</label>
                                                    <div class="col-md-9">
                                                        <form:input type="text" path="email" name="email" id="email" maxlength="70" value="${userDetailsVO.emailid}"  class="form-control" readonly="true" required="true" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">Institute </label>
                                                    <div class="col-md-9">
                                                        <form:input type="text" path="institute" name="institute" value="${userDetailsVO.instname}" id="institute" maxlength="50" class="form-control" required="true" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 required">Role</label>
                                                    <div class="col-md-9">
                                                        <form:input type="text" path="role" name="role" id="role" value="${userDetailsVO.role}" maxlength="11" class="form-control" readonly="true" required="true" />
                                                    </div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->

                                        <!--/row-->
                                    </div>
                                    <hr>
                                    <center>
                                    <div class="form-actions">

                                        <div class="row" >
                                            <div class="col-lg-12">
                                                <div class="row">

                                                    <div class="col-md-offset-3 col-lg-12">
                                                        <form:button type="submit" class="btn btn-success">Submit</form:button>
                                                        <form:button type="button" class="btn btn-inverse">Cancel</form:button>
                                                        <br>
                                                    </div>
                                                    </br>
                                                </div>
                                            </div>
                                            
                                        </div>
                                        </div>
                                </center>

                                    
                                </form:form>
                            </div>
                        </div>
                    </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
               
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">
                � 2020 Prep-UP Web APP
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div></div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/plugins/bootstrap/js/popper.min.html"></script>

    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="js/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>
