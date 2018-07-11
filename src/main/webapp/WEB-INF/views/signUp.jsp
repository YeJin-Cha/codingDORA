<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="resources/css/signUp.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: CodingDORA | SignUp ::</title>
</head>
<body>
<!--  -->
<div class="container">
  <div class="frame">
    <div class="nav">
      <ul class"links">
        <li class="signin-active"><a class="btn">Sign in</a></li>
        <li class="signup-inactive"><a class="btn">Sign up </a></li>
      </ul>
    </div>
    <div ng-app ng-init="checked = false">
    
		<form class="form-signin" action="" method="post" name="form">
        
          <label for="username">Username</label>
          	<input class="form-styling" type="text" name="username" placeholder=""/>
          <label for="password">Password</label>
          	<input class="form-styling" type="text" name="password" placeholder=""/>
          	<input type="checkbox" id="checkbox"/>
          <label for="checkbox" ><span class="ui"></span>Keep me signed in</label>
          
          <div class="btn-animate">
            <a class="btn-signin">Sign in</a>
          </div>
          
        </form>
       
        <form class="form-signup" action="" method="post" name="form">
        
          <label for="fullname">Full name</label>
         	 <input class="form-styling" type="text" name="fullname" placeholder=""/>
          <label for="email">Email</label>
          	<input class="form-styling" type="text" name="email" placeholder=""/>
          <label for="password">Password</label>
          	<input class="form-styling" type="text" name="password" placeholder=""/>
          <label for="confirmpassword">Confirm password</label>
          	<input class="form-styling" type="text" name="confirmpassword" placeholder=""/>
          
          <a ng-click="checked = !checked" class="btn-signup">Sign Up</a>
		
		</form>
      
        <div  class="success">
             </div>
      </div>
      
      <div class="forgot">
        <a href="#">Forgot your password?</a>
      </div>
      
  </div>
    
</div>
</body>
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->

        <script src="resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script type="text/javascript">
        $(function() {
        	$(".btn").click(function() {
        		$(".form-signin").toggleClass("form-signin-left");
            $(".form-signup").toggleClass("form-signup-left");
            $(".frame").toggleClass("frame-long");
            $(".signup-inactive").toggleClass("signup-active");
            $(".signin-active").toggleClass("signin-inactive");
            $(".forgot").toggleClass("forgot-left");   
            $(this).removeClass("idle").addClass("active");
        	});
        });

        $(function() {
        	$(".btn-signup").click(function() {
          $(".nav").toggleClass("nav-up");
          $(".form-signup-left").toggleClass("form-signup-down");
          $(".success").toggleClass("success-left"); 
          $(".frame").toggleClass("frame-short");
        	});
        });

        $(function() {
        	$(".btn-signin").click(function() {
          $(".btn-animate").toggleClass("btn-animate-grow");
          $(".welcome").toggleClass("welcome-left");
          $(".cover-photo").toggleClass("cover-photo-down");
          $(".frame").toggleClass("frame-short");
          $(".profile-photo").toggleClass("profile-photo-down");
          $(".btn-goback").toggleClass("btn-goback-up");
          $(".forgot").toggleClass("forgot-fade");
        	});
        });
        </script>
</html>