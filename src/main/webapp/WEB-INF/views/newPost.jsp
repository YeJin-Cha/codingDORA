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

        <title>:: codingDORA | New Post ::</title>
		<link rel="shortcut icon" href="../resources/images/favicon.ico" type="image/x-icon">
        <!-- style -->
        <link href="../resources/css/style.css" rel="stylesheet" type="text/css">
		<link href="../resources/css/newPost.css" rel="stylesheet" type="text/css">
        <!-- style -->
        <!-- bootstrap -->
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="../resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
        <link href="../resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        
        <script src="../resources/js/jquery-3.2.1.min.js"></script>

<script>
//폼체크 
function formCheck(){
		var d_introduce = document.getElementByName('d_introduce');
		alert(d_introduce);
	}
</script>
</head>
<body>
<header role="header" style="height: 10rem;">
            	<div class="container" style="position: relative; top: -6rem;">
                	<!-- logo -->
                    	<h1>
                        	<a href="./" title="avana LLC"><img src="../resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                        </h1>
                    <!-- logo -->
                </div>
            </header>
<form action="insertPost" method="post" onsubmit="return formCheck();">
<div id="form" class="form-wrapper">
  <label class="text">
    <span>Title</span>
    <div class="input-wrapper">
      <input type="text" name ="d_name"> 
    </div>
  </label>
  
  <label class="text">
    <span>Introduce</span>
    <div class="input-wrapper">
      <textarea name ="d_introduce" placeholder="your introduce Write here."></textarea> 
    </div>
  </label>
  
  <label class="text">
    <span>Plan</span>
    <div class="input-wrapper">
      <textarea name ="d_plan" placeholder="your plan Write here."></textarea> 
    </div>
  </label>

  <label class="text">
    <span>Target</span>
    <div class="input-wrapper">
      <input type="text" name ="d_target"> 
    </div>
  </label>
  
  <label class="text">
    <span>Effect</span>
    <div class="input-wrapper">
      <input type="text" name ="d_effect"> 
    </div>
  </label>

  <label class="text">
    <span>Wallet Address</span>
    <div class="input-wrapper">
      <input type="text" name ="d_targetWallet"> 
    </div>
  </label>

  <label class="dropdown">
    <span>GoalMoney</span>
    <div class="input-wrapper">
      <select size="1" name="d_goalMoney">
        <option>-- Please choose --</option>
        <option value="1">1eth</option>
        <option value="10">10eth</option>
        <option value="100">100eth</option>
        <option value="1000">1000eth</option>    
      </select>
    </div>
  </label>


  <fieldset class="radio-check-label">
    <span class="label">Term</span>
    
    <div class="input-wrapper">
      <label class="radio" for="week">
        <input type="radio" name="d_term" value="week" id="week"/>
        <span>1week</span>
      </label>
    </div>
    
    <div class="input-wrapper">
      <label class="radio" for="month" >
        <input type="radio" name="d_term" value="month" id="month"/>
        <span>1month</span>
      </label>
    </div>
    
    <div class="input-wrapper">    
      <label class="radio" for="year">
        <input type="radio" name="d_term" value="year" id="year"/>
        <span>1year</span>
      </label>
    </div>
  </fieldset>
    <input type="submit" name="submit" value="Submit"/>
    <input type="reset" name="reset" value="Reset"/>

<div class="clear"></div>
<span class="notes">* can not update, delete</span>
</div>  

</form>

</body>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <!-- jquery.countdown -->
<script type="text/javascript">
/* JS is only for label klick on iPad & theming, so you won't need any JS for you homepage (except the iPad part) */

$(document).ready(function(){

  $('.form-wrapper, html').addClass('light');
  $('input[value="light"]').attr('checked', 'checked');

  $('#options input').click(function(){
    $('.form-wrapper, html')
      .removeClass('dark light none')
      .addClass($(this).val());
  });

  /* Label click for iPad iOS  */
  if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/iPad/i)) {

  $('label[for]').click(function() {
    var el = $(this).attr('for');
    if ($('#' + el + '[type=radio], #' + el + '[type=checkbox]').attr('selected', !$('#' + el).attr('selected'))) {
      return;
    } else {
      $('#' + el)[0].focus();
    }
  });
  
  }
});
</script>
</html>