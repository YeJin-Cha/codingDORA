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
                        	<h2><span>Main Title</span>sub title</h2>
                        </header>
                        <p>:: introduce part::</p>
                    </article>
                </section>
                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                	<article class="about-content">
                    	<p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc, fiant sollemnes in futurum.</p>
                        <p class="rate-one">
     						<span class="rate-bar">
        						<span class="rate-bar-value"></span>
    						</span>
    						10
  						</p>

  						<p class="rate-two">
     						<span class="rate-bar">
        						<span class="rate-bar-value"></span>
    						</span>
    						5.5
  						</p>
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
                            <h2> Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                            Sed volutpat vitae facilisis sodales, eu nibh ultricies semper.</h2>
                        </header>
                        <figure>
                            <img src="resources/images/blog-images/blog-details-image.jpg" alt="" class="img-responsive"/>
                        </figure>
                        <div class="enter-content">
                            <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.</p>
                            <p>Praesent posuere sapien est, vitae bibendum risus iaculis ut. Phasellus porta libero eget turpis varius dapibus. Phasellus elementum tempor quam in consectetur. Donec a nisl vehicula metus accumsan lacinia. Cras vehicula massa dui. Quisque ac vehicula turpis. Duis sodales magna risus. Donec tellus risus, vulputate id finibus et, consectetur sit amet Praesent posuere sapien est, vitae bibendum risus iaculis ut. Phasellus porta lnisl.</p>
                            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec rhoncus iaculis eros nec dapibus. Vestibulum lacinia libero et metus rhoncus, vel convallis mi facilisis. Donec in augue nec est molestie gravida varius id sapien. Aliquam at augue ante. Quisque ut diam in nibh malesuada tempor. Proin elementum nisl ac erat finibus, ut viverra mauris lobortis. Pellentesque et ipsum nisl. Integer tincidunt, urna fermentum sodales mattis, ipsum libero mattis lacus, vitae semper risus magna ac mi. Donec auctor ante ornare, fringilla orci vitae, porttitor urna. Donec pretium eu mauris ac bibendum. Cras aliquam faucibus ligula, et porta arcu tincidunt id. Pellentesque viverra tortor vitae pellentesque placerat. </p>
                        </div>
                	</article>
                    
             	<!-- Comments -->
                <div class="comments-pan">
                	<h3>3 Comments</h3>
                    <ul class="comments-reply">
                    	<li>
                        	<figure>
                            	<img src="resources/images/blog-images/image-1.jpg" alt="" class="img-responsive"/>
                            </figure>
                            <section>
                                <h4>Anna Greenfield      <a href="#">Reply</a></h4>
                                <div class="date-pan">January 26, 2016</div>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.
                            </section>
							<ol class="reply-pan">
                            	<li>
                                	<figure>
                                    	<img src="resources/images/blog-images/image-2.jpg" alt="" class="img-responsive"/>
                                    </figure>
                                    <section>
                                        <h4>Johnathan Doe  <a href="#">Reply</a></h4>
                                        <div class="date-pan">January 26, 2016</div>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.
                                    </section>
                                </li>
                            </ol>
                        </li>
                        <li>
                        	<figure>
                            	<img src="resources/images/blog-images/image-3.jpg" alt="" class="img-responsive"/>
                            </figure>
                            <section>
                                <h4>Anna Greenfield  <a href="#">Reply</a></h4>
                                <div class="date-pan">January 26, 2016</div>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat eu nibh ultricies semper. Vivamus porta, felis vitae facilisis sodales, felis est iaculis orci, et ornare sem mauris ut turpis. Pellentesque vitae tortor nec tellus hendrerit aliquam. Donec condimentum leo eu ullamcorper scelerisque pellentesque urna rhoncus.
                            </section>
                        </li>
                    </ul>
                    <div class="commentys-form">
                    	<h4>Leave a comment</h4>
                        <div class="row">
                        	<form action="" method="get">
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
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                 	<textarea name="" cols="" rows="" placeholder="Whats in your mind"></textarea>
                                </div>
                                <div class="text-center">
                                	<input name="" type="button" value="Post Comment">
                                </div>
                            </form>
                        </div>
                    </div>
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