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

        <title>:: avana LLC | About ::</title>
		<link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
        <!-- style -->
        <link href="resources/css/style.css" rel="stylesheet" type="text/css">
        <link href="resources/css/like.css" rel="stylesheet" type="text/css">
        <link href="resources/css/ratebar.css" rel="stylesheet" type="text/css">
        <link href="resources/css/inputText.css" rel="stylesheet" type="text/css">
        <!-- style -->
        <!-- bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        
        <script src="resources/js/jquery-3.2.1.min.js"></script>
        
	<script>
		$(document).ready(function () {
		   	$('#replyBt').on('click', checkForm);
		   	$('#fundingVal').on('change', changeValue);
		   	
		   	var totalMoney = ${readPost.d_totalMoney};
    		console.log(totalMoney);
        	var goalMoney = ${readPost.d_goalMoney};
        	console.log(goalMoney);
        	var parcentage = totalMoney/goalMoney * 100 ;
        	console.log(parcentage.toFixed(1));
        	
        	if (parcentage <= 10){
        		
        	}else if(parcentage >=100){
        		$("#progress").css("width","100%");
        	}else{
        		$("#progress").css("width",parcentage+"%");
        	}
        	
        	$("#zyuu").append(goalMoney*0.1);
        	$("#san").append(goalMoney*0.3);
        	$("#roku").append(goalMoney*0.6);
        	$("#hachi").append(goalMoney*0.8);
        	

		});
		
		function changeValue() {
	   		var fundingVal = $('#fundingVal').val();
	   		var changeVal = $('#changeVal').val();
	   		var num = "${postNum}";
	   		
            $.ajax({
                type: "GET",
                url: "changeVal",
                datatype: 'text',
                data: {'d_num': num},
				success: function(isCorrect) {
					changeVal = fundingVal * 2000;
					$('#changeVal').val(changeVal);
				},
				error: function (e) {
					alert('실패');
				}
            });
		}
		
		
		function checkForm() {
			var reply = $('#reply').val();
			var num = "${postNum}";
			if (reply == '') {
				return false;
			}
		
		
		 	$.ajax({
				url: 'writeReply',
				type: 'get',
				data: {reply: reply, d_num: num},
				datatype: 'text',
				success: function(isCorrect) {
					location.href = "/codingdora/postdetail?d_num="+isCorrect;
				},
				error: function (e) {
					alert('실패');
				}
			});
		}
	</script>
	</head>
    <body>
    	<!-- header -->
        	<header role="header">
            	<div class="container">
                	<!-- logo -->
                    	<h1>
                        	<a href="index.html" title="avana LLC"><img src="resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                        </h1>
                    <!-- logo -->
                    <!-- nav -->
                    <nav role="header-nav" class="navy">
                        <ul>
                            <li><a href="index.html" title="Work">Work</a></li>
                            <li class="nav-active"><a href="about.html" title="About">About</a></li>
                            <li><a href="blog.html" title="Blog">Blog</a></li>
                            <li><a href="contact.html" title="Contact">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- nav -->
                </div>
            </header>
        <!-- header -->
        <!-- main -->
        <main role="main-inner-wrapper" class="container">
            <div class="row">
            	<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
                	<article role="pge-title-content">
                    	<header>
                        	<h2><span>${readPost.d_name}</span>sub title</h2>
                        </header>
                        <p>:: introduce part::</p>
                    </article>
                </section>
                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                	<article class="about-content">
                		<p>${readPost.d_term}</p>
                        
                        <!-- rate bar -->
                        <div id="goal"><i class="fab fa-ethereum"></i>  ${readPost.d_goalMoney}</div>
  						<div id="glass">
    						<div id="progress"><i class="fab fa-ethereum"></i>   ${readPost.d_totalMoney}</div>
    						
  						</div>
  						<div class="goal-stat">
    						<span class="goal-number">10%</span>
    						<span class="goal-label" id="zyuu"><i class="fab fa-ethereum"></i>  </span>
  						</div>
  						<div class="goal-stat">
    						<span class="goal-number">30%</span>
    						<span class="goal-label" id="san"><i class="fab fa-ethereum"></i>  </span>
  						</div>
  						<div class="goal-stat">
    						<span class="goal-number">60%</span>
    						<span class="goal-label" id="roku"><i class="fab fa-ethereum"></i>  </span>
  						</div>
  						<div class="goal-stat">
    						<span class="goal-number">80%</span>
    						<span class="goal-label" id="hachi"><i class="fab fa-ethereum"></i>  </span>
  						</div>	
				<div class="d_info">
					<span>if you donate</span>
					<span><i class="fab fa-ethereum"></i>   <input type="text" id="fundingVal" name="fundingVal" placeholder="ex) 100"></span>
				
					<span>you can get</span>
					<span><i class="fas fa-seedling"></i>   <input type="text" id="changeVal" name="changeVal" disabled="disabled"></span>
                	
				</div>
               	<div class="commentys-form">
               		<input type="button" value="Funding" name="">
               	</div>
			</div>
  						<!-- /rate bar -->
  						
			</article>
          </section>
				<div class='middle-wrapper'>
  					<div class='like-wrapper'>
    					<a class='like-button'>
      						<span class='like-icon'>
        						<div class='heart-animation-1'></div>
        						<div class='heart-animation-2'></div>
      						</span>
      						Favorite
    					</a>
  					</div>
				</div>
  
                <div class="clearfix"></div>
                <!-- thumbnails -->
                	<div class="thumbnails-pan">
                    	<section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
                        	<figure>
                            	<img src="resources/images/about-images/about-image-1.jpg" class="img-responsive"/>
                            	<figcaption>
                                	<h3>John Doe</h3>
                                    <h5>The designer</h5>
                                </figcaption>
                            </figure>
                        </section>
                        <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
                        	<figure>
                            	<img src="resources/images/about-images/about-image-2.jpg" class="img-responsive"/>
                            	<figcaption>
                                	<h3>kristy Roan</h3>
                                    <h5>The Manager</h5>
                                </figcaption>
                            </figure>
                        </section>
                        <section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
                        	<figure>
                            	<img src="resources/images/about-images/about-image-3.jpg" class="img-responsive"/>
                            	<figcaption>
                                	<h3>Jason takas</h3>
                                    <h5>The Founder</h5>
                                </figcaption>
                            </figure>
                        </section>
                    </div>
                <!-- thumbnails -->
            </div>
            <div class="blog-details">
                	<article class="post-details" id="post-details">
                        <header role="bog-header" class="bog-header text-center">
                            <h3><span>20</span> July 2016</h3>
                            <h2>사업내용</h2>
                            <p>${readPost.d_introduce}</p>
                        </header>
                        <figure>
                            <img src="resources/images/blog-images/blog-details-image.jpg" alt="" class="img-responsive"/>
                        </figure>
                        <div class="enter-content">
                        	<h2>기부금 사용계획</h2>
                            <p>${readPost.d_plan}</p>
                            <h2>사업대상 및 기대효과</h2>
                            <p>${readPost.d_target}
                            <p>${readPost.d_effect}</p>
                        </div>
                	</article>
                    
             	<!-- Comments -->
                <div class="comments-pan">
                	<h3>3 Comments</h3>
                    <ul class="comments-reply">
                    	<c:forEach var="comment" items="${readComment}">
	                        <li>
	                        	<figure>
	                            	<img src="resources/images/blog-images/image-1.jpg" alt="" class="img-responsive"/>
	                            </figure>
	                            <section>
	                                <h4>${comment.userid}      <!-- <a href="#">Reply</a> --></h4>
	                                <div class="date-pan">${comment.d_comm_date}</div>
	                                ${comment.d_comm_text}
	                            </section>
	                        </li>	
                    	</c:forEach>
                    </ul>
                    <c:if test="${userId != null}">
                    <div class="commentys-form">
                    	<h4>Leave a comment</h4>
                        <div class="row">
                        	<form>
<!--
                             	<div class="col-xs-12 col-sm-4 col-md-4">
                                	<input name="" type="text" placeholder="Whats your name *">
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                	<input name="" type="email" placeholder="Whats your email *">
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                	<input name="" type="url" placeholder="Runing a Website">
                                </div>
                                <div class="clearfix"></div>
-->
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                 	<textarea id="reply" name="reply" cols="" rows="" placeholder="Whats in your mind"></textarea>
                                </div>
                                <div class="text-center">
                                	<input id="replyBt" name="replyBt" type="button" value="Post Comment">
                                </div>
                            </form>
                        </div>
                    </div>
					</c:if>
                </div>
                </div>
            
        </main>
    	<!-- main -->
        <!-- footer -->
        <footer role="footer">
            <!-- logo -->
                <h1>
                    <a href="index.html" title="avana LLC"><img src="resources/images/logo.png" title="avana LLC" alt="avana LLC"/></a>
                </h1>
            <!-- logo -->
            <!-- nav -->
            <nav role="footer-nav">
            	<ul>
                	<li><a href="index.html" title="Work">Work</a></li>
                    <li><a href="about.html" title="About">About</a></li>
                    <li><a href="blog.html" title="Blog">Blog</a></li>
                    <li><a href="contact.html" title="Contact">Contact</a></li>
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
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <!-- custom -->
		<script src="resources/js/nav.js" type="text/javascript"></script>
        <script src="resources/js/custom.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- jquery.countdown -->
        <script src="resources/js/html5shiv.js" type="text/javascript"></script>
    	
    	<script type="text/javascript">
    	var val_one = $( ".rate-one" ).text() * (10) + '%';
    	var val_two = $( ".rate-two" ).text() * (10) + '%';

    	$( '.rate-one .rate-bar-value' ).css( "width", val_one);
    	$( '.rate-two .rate-bar-value' ).css( "width", val_two);

    	</script>
    	<script type="text/javascript">
    	$('a.like-button').on('click', function() {
    		  $(this).toggleClass('liked');
    		});
    	</script>
    	
    </body>
</html>