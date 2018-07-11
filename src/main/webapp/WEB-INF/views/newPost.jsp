<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="../resources/css/newPost.css" rel="stylesheet" type="text/css">
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>:: codingDORA | New Post ::</title>
</head>
<body>
<!--
   d_num - 필요없음
   userid - 필요없음
   
   d_name - 제목
   
   d_content - 내용
   
   d_introduce - 
   
   d_plan - 기부금 사용 금액
   
   d_target - 사람, 동물 등
   
   d_effect - 사업대상 및 기대효과
   
   d_goalMoney - 모금 금액
   
   d_totalMoney - 필요없음
   
   d_term - 기간
   
   d_images - 이미지 등록
   
-->
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
      <textarea name ="d_introduce">your introduce Write here.  </textarea> 
    </div>
  </label>
  
  <label class="text">
    <span>Plan</span>
    <div class="input-wrapper">
      <textarea name ="d_plan">your plan Write here.</textarea> 
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
      <select size="1" name="goalMoney">
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
        <input type="radio" name="term" value="week" id="week"/>
        <span>1week</span>
      </label>
    </div>
    
    <div class="input-wrapper">
      <label class="radio" for="month" >
        <input type="radio" name="term" value="month" id="month"/>
        <span>1month</span>
      </label>
    </div>
    
    <div class="input-wrapper">    
      <label class="radio" for="year">
        <input type="radio" name="term" value="year" id="year"/>
        <span>1year</span>
      </label>
    </div>
  </fieldset>
  <!-- 
  <fieldset class="radio-check-label">
    <span class="label">Please check all</span>
    <div class="input-wrapper">
      <label class="checkbox" for="accept">
        <input type="checkbox" name="accept" id="accept"/>
        <span>Okay, I accept all u want</span>
      </label>
    </div>
    
    <div class="input-wrapper">
      <label class="checkbox" for="spam" >
        <input type="checkbox" name="spam" id="spam"/>
        <span>Yes, send me all your spam.</span>
      </label>
    </div>
    
    <div class="input-wrapper">  
      <label class="checkbox" for="toolbars" >
        <input type="checkbox" name="toolbars" id="toolbars"/>
        <span>Install 1000 toolbars and add all available plugins to my browser</span>
      </label>

    </div>
  </fieldset>
  
 -->
    <input type="submit" name="submit" value="Submit"/>
    <input type="reset" name="reset" value="Reset"/>

<div class="clear"></div>
<span class="notes">* can not update, delete</span>
</div>  



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