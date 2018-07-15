<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta charset="utf-8">
        <!-- Description, Keywords and Author -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>:: CodingDORA | SignUp ::</title>
		<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
        <!-- style -->
		<link href="resources/css/signUp.css" rel="stylesheet" type="text/css">
        <!-- style -->
        <!-- bootstrap -->
        <!-- responsive -->
        <!-- font-awesome -->
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
        <!-- font-awesome -->
        
        <script src="resources/js/jquery-3.2.1.min.js"></script>

<script>
$(document).ready(function () {
   	$('#btn-signin').on('click', checkLoginForm);
});

function checkLoginForm() {
	var id = $('#username').val();
	var password = $('#password').val();
	if (id == '') {
		$('.login-box #id').css('margin-bottom', '0px');
		$('.login-box #password').css('margin-bottom', '20px');
		$('#id_err').html('아이디를 입력해주세요.');
		$('#id_err').css('color', 'red');
		$('#id_err').show();
		$('#pwd_err').hide();
		$('#login_err').hide();
		
		return false;
	}
	
	if (password == '') {
		$('.login-box #password').css('margin-bottom', '0px');
		$('.login-box #id').css('margin-bottom', '20px');
		$('#pwd_err').html('비밀번호를 입력해주세요.');
		$('#pwd_err').css('color', 'red');
		$('#pwd_err').show();
		$('#id_err').hide();
		$('#login_err').hide();
		
		return false;
	}
	
 	$.ajax({
		url: 'my/selectUser',
		type: 'post',
		data: {username: id, password: password},
		datatype: 'text',
		success: function(isCorrect) {
			if (isCorrect == 1) {
				location.href = "/codingdora";
			} else if(isCorrect == 0) {
				$('.login-box #id').css('margin-bottom', '20px');
				$('.login-box #password').css('margin-bottom', '0px');
				$('#login_err').html('아이디 또는 비밀번호를 다시 확인하세요.');
				$('#login_err').css('color', 'red');
				$('#login_err').show();
				$('#id_err').hide();
				$('#pwd_err').hide();
			} else if(isCorrect == 2){
				$('.login-box #id').css('margin-bottom', '20px');
				$('.login-box #password').css('margin-bottom', '0px');
				$('#login_err').html('이메일 인증 후 이용 가능합니다. ');
				$('#login_err').css('color', 'red');
				$('#login_err').show();
				$('#id_err').hide();
				$('#pwd_err').hide();
			}
		},
		error: function (e) {
			alert('로그인 실패');
		}
	});
}
</script>
</head>
<body>
<header role="header" style="height: 5rem;">
            	<div class="container" style="position: relative; top: -3rem;">
                	<!-- logo -->
                    	<h1>
                        	<a href="index.html" title="avana LLC"><img src="resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                        </h1>
                    <!-- logo -->
                </div>
            </header>

<div class="container">
  <div class="frame">
    <div class="nav">
      <ul class"links">
        <li class="signin-active"><a class="btn">Sign in</a></li>
        <li class="signup-inactive"><a class="btn">Sign up </a></li>
      </ul>
    </div>
    <div ng-app ng-init="checked = false">
    
		<form class="form-signin" >
        
          <label for="username">Username</label>
          	<input class="form-styling" type="text" id="username" name="username" placeholder=""/>
          <label for="password">Password</label>
          	<input class="form-styling" type="text" id="password" name="password" placeholder=""/>
          	<input type="checkbox" id="checkbox"/>
          <label for="checkbox" ><span class="ui"></span>Keep me signed in</label>
          
          <div class="btn-animate">
            <a class="btn-signin" id="btn-signin">Sign in</a>
            
			<span id="id_err"></span><br/>
			<span id="pwd_err"></span><br/>
			<span id="login_err"></span><br/>
          </div>
          
        </form>
       
       
        <form class="form-signup" action="my/insertUser" method="post" name="form">
        
          <label for="fullname">Full name</label>
         	 <input class="form-styling" type="text" name="username" placeholder=""/>
          <label for="email">Email</label>
          	<input class="form-styling" type="text" name="useremail" placeholder=""/>
          <label for="password">Password</label>
          	<input class="form-styling" type="text" name="userpw" placeholder=""/>
          <label for="confirmpassword">Confirm password</label>
          	<input class="form-styling" type="text" name="userid" placeholder=""/>
          
          <!-- <a ng-click="checked = !checked" class="btn-signup">Sign Up</a> -->
		<input type="submit" class="btn-signup" value="Sign Up">
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

        </script>
</html>