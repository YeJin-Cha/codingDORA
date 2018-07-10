<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>

 <html>

    <head>
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta charset="utf-8">
        <!-- Description, Keywords and Author -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>:: codingDARA | Profile ::</title>
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <!-- style -->
        <link href="../resources/css/style.css" rel="stylesheet" type="text/css">
        <!-- style -->
        <!-- bootstrap -->
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="../resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="../resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="../resources/css/effects/set2.css" rel="stylesheet" type="text/css">
        <link href="../resources/css/effects/normalize.css" rel="stylesheet" type="text/css">
	</head>



    <body>
    	<!-- header -->
        	<header role="header">
            	<div class="container">
                	<!-- logo -->
                    	<h1>
                        	<a href="index.jsp" title="avana LLC"><img src="../resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                        </h1>
                    <!-- logo -->
                    <!-- nav -->
                    <nav role="header-nav" class="navy">
                        <ul>
                            <li><a href="index.jsp" title="Work">Work</a></li>
                            <li><a href="about.jsp" title="About">About</a></li>
                            <li><a href="blog.jsp" title="Blog">Blog</a></li>
                            <li class="nav-active"><a href="contact.jsp" title="Contact">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- nav -->
                </div>
            </header>
        <!-- header -->
        <!-- main -->
        <main role="main-inner-wrapper" class="container">
            <div class="row">
            	<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
                	<article role="pge-title-content" class="contact-header">
                    	<header>
                        	<h2><span>Hey Thr!</span> we love to hear you.</h2>
                        </header>
                        <p><a href="tel:8197654321"><i class="fa fa-phone" aria-hidden="true"></i> +8197654321</a><a href="mailto:contact@avana.com"><i class="fa fa-envelope" aria-hidden="true"></i> contact@avana.com</a></p>
                    </article>
                </div>
                <!-- map -->
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="demo-wrapper">
                        	<div id="surabaya"></div>
                        </div>
                </div>
                <!-- map -->
                <div class="clearfix"></div>
               <!-- contat-from-wrapper -->
               <div class="contat-from-wrapper">
               		  <div id="message"></div>
                                <form method="post" action="php/contactfrom.php" name="cform" id="cform">
                            <div class="row">
                                <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                                <input  name="name" id="name" type="text" placeholder="Whats your name">
                                </div>
                                <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                                <input  name="email" id="email" type="email"  placeholder="Whats your email">
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <textarea name="comments" id="comments" cols="" rows="" placeholder="Whats in your mind"></textarea>
                            <div class="clearfix"></div>
                            <input name="" type="submit" value="Send email">
                            <div id="simple-msg"></div>
                        </form>
               </div>
               <!-- contat-from-wrapper -->
            </div>
        </main>

    	<!-- main -->
        <!-- footer -->
        <footer role="footer">
            <!-- logo -->
                <h1>
                    <a href="index.jsp" title="avana LLC"><img src="../resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                </h1>
            <!-- logo -->
            <!-- nav -->
            <nav role="footer-nav">
            	<ul>
                	<li><a href="index.jsp" title="Work">Work</a></li>
                    <li><a href="about.jsp" title="About">About</a></li>
                    <li><a href="blog.jsp" title="Blog">Blog</a></li>
                    <li><a href="contact.jsp" title="Contact">Contact</a></li>
                </ul>
            </nav>
            <!-- nav -->
            <ul role="social-icons">
            	<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>
            </ul>
            <p class="copy-right">&copy; 2015  avana LLC.. All rights Resved</p>
        </footer>
        <!-- footer -->
    
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

        <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
        <script src="../resources/js/custom.js" type="text/javascript"></script>
		<script src="../resources/js/jquery.contact.js" type="text/javascript"></script>
        <script src="../resources/https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script> 
		<script src="../resources/js/maps.js" type="text/javascript"></script>
        <script src="../resources/js/nav.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- jquery.countdown -->
        <script src="../resources/js/html5shiv.js" type="text/javascript"></script>

    </body>

</html>