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
    <span>제목</span>
    <div class="input-wrapper">
      <input type="text" /> 
    </div>
  </label>

  <label class="text">
    <span>내용</span>
    <div class="input-wrapper">
      <textarea></textarea> 
    </div>
  </label>
  
  <label class="dropdown">
    <span>Dropdown</span>
    <div class="input-wrapper">
      <select size="1">
        <option>-- Please choose --</option>
        <option value="1">Option 1</option>
        <option value="2">Option 2</option>
        <option value="3">Option 3</option>    
      </select>
    </div>
  </label>

  <label class="multiple">  
    <span>Multiple</span>
    <div class="input-wrapper">
      <select class="multiple" size="3">
        <option value="1">Option 1</option>
        <option value="2">Option 2</option>
        <option value="3">Option 3</option>    
      </select>  
    </div>
  </label>
  
  
  <fieldset class="radio-check-label">
    <span class="label">Do you like this?</span>
    
    <div class="input-wrapper">
      <label class="radio" for="yes">
        <input type="radio" name="foo" value="yes" id="yes"/>
        <span>Yes, please</span>
      </label>
    </div>
    
    <div class="input-wrapper">
      <label class="radio" for="no" >
        <input type="radio" name="foo" value="no" id="no"/>
        <span>No, thanks</span>
      </label>
    </div>
    
    <div class="input-wrapper">    
      <label class="radio" for="maybe" for="maybe">
        <input type="radio" name="foo" value="maybe" id="maybe"/>
        <span>Well, maybe</span>
      </label>
    </div>
  </fieldset>
  
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
  

    <input type="submit" name="submit" value="Submit"/>
    <input type="reset" name="reset" value="Reset"/>

<div class="clear"></div>
<span class="notes">* Is mandetory.</span>
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