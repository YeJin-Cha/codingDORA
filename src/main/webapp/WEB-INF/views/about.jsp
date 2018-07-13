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
        <!-- style -->
        <!-- bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <style type="text/css">
.rate-bar {
  position: relative;
  width: 90%;
  background-color: #fff;
  vertical-align: middle;
    height: 10px;
  display: inline-block;
}
.rate-bar span {
  position: absolute;
  top: 0;
  left: 0;
  background-color: tomato;
  transition: 1s;
  width: 0;
  transition: .4s;
    height: 10px;
  display: inline-block;
}
        
        </style>
        
	<script>
		$(document).ready(function () {
		   	$('#replyBt').on('click', checkForm);
		});
		
		function checkForm() {
			var reply = $('#reply').val();
			
			if (reply == '') {
				return false;
			}
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
                		<p>XXXX.XX.XX까지</p>
                        
                        <p class="rate-one">
     						<span class="rate-bar">
        						<span class="rate-bar-value"></span>
    						</span>
    						${readPost.d_goalMoney}
  						</p>

  						<p class="rate-two">
     						<span class="rate-bar">
        						<span class="rate-bar-value"></span>
    						</span>
    						${readPost.d_totalMoney}
  						</p>
  						<div id="main-content">
  <div>
    <input type="checkbox" id="checkbox" />
    <label for="checkbox">
      <svg id="heart-svg" viewBox="467 392 58 57" xmlns="http://www.w3.org/2000/svg">
        <g id="Group" fill="none" fill-rule="evenodd" transform="translate(467 392)">
          <path d="M29.144 20.773c-.063-.13-4.227-8.67-11.44-2.59C7.63 28.795 28.94 43.256 29.143 43.394c.204-.138 21.513-14.6 11.44-25.213-7.214-6.08-11.377 2.46-11.44 2.59z" id="heart" fill="#AAB8C2"/>
          <circle id="main-circ" fill="#E2264D" opacity="0" cx="29.5" cy="29.5" r="1.5"/>

          <g id="grp7" opacity="0" transform="translate(7 6)">
            <circle id="oval1" fill="#9CD8C3" cx="2" cy="6" r="2"/>
            <circle id="oval2" fill="#8CE8C3" cx="5" cy="2" r="2"/>
          </g>

          <g id="grp6" opacity="0" transform="translate(0 28)">
            <circle id="oval1" fill="#CC8EF5" cx="2" cy="7" r="2"/>
            <circle id="oval2" fill="#91D2FA" cx="3" cy="2" r="2"/>
          </g>

          <g id="grp3" opacity="0" transform="translate(52 28)">
            <circle id="oval2" fill="#9CD8C3" cx="2" cy="7" r="2"/>
            <circle id="oval1" fill="#8CE8C3" cx="4" cy="2" r="2"/>
          </g>

          <g id="grp2" opacity="0" transform="translate(44 6)">
            <circle id="oval2" fill="#CC8EF5" cx="5" cy="6" r="2"/>
            <circle id="oval1" fill="#CC8EF5" cx="2" cy="2" r="2"/>
          </g>

          <g id="grp5" opacity="0" transform="translate(14 50)">
            <circle id="oval1" fill="#91D2FA" cx="6" cy="5" r="2"/>
            <circle id="oval2" fill="#91D2FA" cx="2" cy="2" r="2"/>
          </g>

          <g id="grp4" opacity="0" transform="translate(35 50)">
            <circle id="oval1" fill="#F48EA7" cx="6" cy="5" r="2"/>
            <circle id="oval2" fill="#F48EA7" cx="2" cy="2" r="2"/>
          </g>

          <g id="grp1" opacity="0" transform="translate(24)">
            <circle id="oval1" fill="#9FC7FA" cx="2.5" cy="3" r="2"/>
            <circle id="oval2" fill="#9FC7FA" cx="7.5" cy="2" r="2"/>
          </g>
        </g>
      </svg>
    </label>

    <h1 id="likenum">1</h1>
  </div>
</div>
                    </article>
                </section>
                
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
	                                <h4>${comment.userid}      <a href="#">Reply</a></h4>
	                                <div class="date-pan">January 26, 2016</div>
	                                ${comment.d_comm_text}
	                            </section>
	                        </li>	
                    	</c:forEach>
                    </ul>
                    <c:if test="${userId != null}">
                    <div class="commentys-form">
                    	<h4>Leave a comment</h4>
                        <div class="row">
                        	<form action="" method="get">
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
    </body>
</html>