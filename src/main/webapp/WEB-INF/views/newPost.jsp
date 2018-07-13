<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="../resources/css/newPost.css" rel="stylesheet" type="text/css">
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: codingDORA | New Post ::</title>
<script>
//폼체크 
function formCheck(){
		var d_introduce = document.getElementByName('d_introduce');
		alert(d_introduce);
	}
</script>
</head>
<body>

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
  <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
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