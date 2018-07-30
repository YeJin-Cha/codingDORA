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
        <title>::codingDARA FundingList::</title>

		<link rel="shortcut icon" href="<c:url value="../resources/images/favicon.ico"/>" type="image/x-icon">

        <!-- style -->
        <link href="<c:url value="../resources/css/style.css"/>" rel="stylesheet" type="text/css">
        <!-- style -->

        <!-- bootstrap -->
        <link href="<c:url value="../resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css">
        <!-- responsive -->
        <link href="<c:url value="../resources/css/responsive.css"/>" rel="stylesheet" type="text/css">
        <!-- font-awesome -->
        <link href="<c:url value="../resources/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
        <!-- effects -->
        <link href="<c:url value="../resources/css/effects/set2.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="../resources/css/effects/normalize.css"/>" rel="stylesheet" type="text/css">
        <link href="<c:url value="../resources/css/effects/component.css"/>"  rel="stylesheet" type="text/css" >
	</head>



    <body>
    	<!-- header -->
        	<header role="header">
            	<div class="container">
                	<!-- logo -->
                    	<h1>
                        	<a href="/codingdora" title="codingDORA funding"><img style="width: 150px;" src="../resources/images/logo.png" title="codingDORA" alt="codingDORA"/></a>
                        </h1>
                    <!-- logo -->
                    <!-- nav -->
                    <nav role="header-nav" class="navy">
                        <ul>
                            <li><a href="my/donationList" title="My DonationList">My DonationList</a></li>
                           <!-- 임시 페이지 이동 -->
                           <li><a href="postdetail" title="PostDetail">PostDetail</a></li>
                           <!-- /임시 페이지 이동 -->
                            <c:if test="${userId != null}">
                            <li><a href="my/profile" title="My profile">My profile</a></li>
                            <li><a href="my/newPost" title="newPost">new Posting</a></li>
	                            <li><a href="my/logout" title="logout">Logout</a></li>
							</c:if>
                            <c:if test="${userId == null}">
	                            <li><a href="signUp" title="SignUp">SignUp</a></li>
							</c:if>                            
                        </ul>
                    </nav>
                    <!-- nav -->
                </div>
            </header>
        <!-- header -->

        <!-- main -->

        <main role="main-home-wrapper" class="container">
            <div class="row">
            	<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
                	<article role="pge-title-content">
                    	<header>
                    		<h4>my etherwallet</h4>
                    		<h4 id="wallet">0x133fbe1a29ea9729e513723d7ed072e1fc79c4d7</h4>
                    		
                        	<h2>
                        		<span>DonationList</span>
                        		<h4 id="ethValue"></h4>
                        		<br>
                        		<h4 id="greenValue"></h4>
                        		
                        		</h2>
                        </header>
                        <p>Make your donation worth it by donating with Ethereum!</p>
                    </article>
                </section>

                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
                	<figure class="effect-oscar">
                    	<img src="../resources/images/home-images/image-1.jpg" alt="" class="img-responsive"/>
                        <figcaption>
                        	<h2>introduce<span> coding DORA</span></h2>
							<p>Please check more.</p>
							<a href="introduceDORA">View more</a>
                        </figcaption>
                    </figure>
                </section>

                <div class="clearfix"></div>
				<c:forEach var="post" items="${donationList}" varStatus="don" step="4">
					<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
	                	<ul class="grid-lod effect-2" id="grid">
	                    	<li>
	                        	<figure class="effect-oscar">
	                            <img src="../resources/images/home-images/image-2.jpg" alt="" class="img-responsive"/>
	                            <figcaption>
	                                    <h2><span>${post.d_name}</span></h2>
	                                    <p><span class="glyphicon glyphicon-piggy-bank"></span>  ${post.d_totalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-flag"></span>  ${post.d_goalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-calendar"></span>  ${post.d_term}</p>
	                                    <a href="../postdetail?d_num=${post.d_num}">View more</a>
	                            </figcaption>
	                        </figure>
	                        </li>

 							<c:if test="${don.index < fn:length(donationList)}">
	                        	<c:set var="nextVal" value="${donationList[don.index+1]}"/>
		                        <li>
		                        	<figure class="effect-oscar">
		                            <img src="../resources/images/home-images/image-4.jpg" alt="" class="img-responsive"/>
		                            <figcaption>
		                                    <h2><span>${nextVal.d_name}</span></h2>
										<p><span class="glyphicon glyphicon-piggy-bank"></span>  ${nextVal.d_totalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-flag"></span>  ${nextVal.d_goalMoney}</p>	
	                                    <p><span class="glyphicon glyphicon-calendar"></span>  ${nextVal.d_term}</p>
		                                <a href="../postdetail?d_num=${nextVal.d_num}">View more</a>
		                            </figcaption>
		                        </figure>
		                        </li>
							</c:if>
	                    </ul>
	                </section>

 					<c:if test="${don.index+2 < fn:length(donationList)}">
	                	<c:set var="nextVal" value="${donationList[don.index+2]}"/>
	                <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">
	                	<ul class="grid-lod effect-2" id="grid">
	                    	<li>
	                        	<figure class="effect-oscar">
	                        	<!-- 
	                        		${donation.d_effect}
	                        		${donation.d_num}
	                        		${donation.d_images}
	                        	 -->
	                            <img src="../resources/images/home-images/image-3.jpg" alt="" class="img-responsive"/>
	                            <figcaption>
	                                    <h2><span>${nextVal.d_name}</span></h2>
										<p><span class="glyphicon glyphicon-piggy-bank"></span>  ${nextVal.d_totalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-flag"></span>  ${nextVal.d_goalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-calendar"></span>  ${nextVal.d_term}</p>
	                                    <a href="../postdetail?d_num=${nextVal.d_num}">View more</a>
	                            </figcaption>
	                        </figure>
	                        </li>

 							<c:if test="${don.index+3 <  fn:length(donationList)}">
	                        	<c:set var="nextVal" value="${donationList[don.index+3]}"/>
		                        <li>
		                        	<figure class="effect-oscar">
		                            <img src="../resources/images/home-images/image-5.jpg" alt="" class="img-responsive"/>
		                            <figcaption>
		                                    <h2><span>${nextVal.d_name}</span></h2>
	                                    <p><span class="glyphicon glyphicon-piggy-bank"></span>  ${nextVal.d_totalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-flag"></span>  ${nextVal.d_goalMoney}</p>
	                                    <p><span class="glyphicon glyphicon-calendar"></span>  ${nextVal.d_term}</p>
		                                <a href="../postdetail?d_num=${nextVal.d_num}">View more</a>
		                            </figcaption>
		                        </figure>
		                        </li>
							</c:if>
	                    </ul>
	                </section>
	                </c:if>
				</c:forEach>

                <div class="clearfix"></div>
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

        <script src="<c:url value="../resources/js/jquery.min.js"/>" type="text/javascript"></script>
        <!-- custom -->

		<script src="<c:url value="../resources/js/nav.js"/>" type="text/javascript"></script>
        <script src="<c:url value="../resources/js/custom.js"/>" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="<c:url value="../resources/js/bootstrap.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="../resources/js/effects/masonry.pkgd.min.js"/>"  type="text/javascript"></script>
		<script src="<c:url value="../resources/js/effects/imagesloaded.js"/>"  type="text/javascript"></script>
		<script src="<c:url value="../resources/js/effects/classie.js"/>"  type="text/javascript"></script>
		<script src="<c:url value="../resources/js/effects/AnimOnScroll.js"/>"  type="text/javascript"></script>
        <script src="<c:url value="../resources/js/effects/modernizr.custom.js"/>"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/ethereum/web3.js/dist/web3.js"></script>
   	 	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bignumber.js/bignumber.min.js"></script>
   
        <!-- jquery.countdown -->

        <script src="<c:url value="../resources/js/html5shiv.js"/>" type="text/javascript"></script>

		<script>


	    $(document).ready(function(){
	   		var wallet = $("#wallet").text();
	      $.getJSON('https://api.etherscan.io/api?module=account&action=balance&address='+wallet+'&tage=latest&apikey=yourApikeyToken', function (data) { 
	    	  var officialValue = BigNumber(data.result);
	          var hardcap = BigNumber(1000000000000000000);
	          var percent = BigNumber(officialValue / hardcap);
	          $("#ethValue").text("eth : "+percent);
	          document.getElementById("myBar").style.width= (percent * 100) + '%';
	      })
	    })
	    
	    
	    const greenTokenABI = [
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "name",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "string"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "_spender",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "approve",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "bool"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "token",
	    				"type": "address"
	    			}
	    		],
	    		"name": "reclaimToken",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "totalSupply",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "uint256"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "_from",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_to",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "transferFrom",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "bool"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "INITIAL_SUPPLY",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "uint256"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "decimals",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "uint8"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [],
	    		"name": "unpause",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [
	    			{
	    				"name": "node",
	    				"type": "address"
	    			}
	    		],
	    		"name": "isPermitted",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "bool"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "burn",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "paused",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "bool"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [],
	    		"name": "reClaimEther",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [
	    			{
	    				"name": "_owner",
	    				"type": "address"
	    			}
	    		],
	    		"name": "balanceOf",
	    		"outputs": [
	    			{
	    				"name": "balance",
	    				"type": "uint256"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "node",
	    				"type": "address"
	    			}
	    		],
	    		"name": "unblacklist",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "_from",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "burnFrom",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [],
	    		"name": "pause",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "owner",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "address"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [],
	    		"name": "symbol",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "string"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "_to",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "transfer",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "bool"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": true,
	    		"inputs": [
	    			{
	    				"name": "_owner",
	    				"type": "address"
	    			},
	    			{
	    				"name": "_spender",
	    				"type": "address"
	    			}
	    		],
	    		"name": "allowance",
	    		"outputs": [
	    			{
	    				"name": "",
	    				"type": "uint256"
	    			}
	    		],
	    		"payable": false,
	    		"stateMutability": "view",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "newOwner",
	    				"type": "address"
	    			}
	    		],
	    		"name": "transferOwnership",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"constant": false,
	    		"inputs": [
	    			{
	    				"name": "node",
	    				"type": "address"
	    			}
	    		],
	    		"name": "blacklist",
	    		"outputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "function"
	    	},
	    	{
	    		"inputs": [],
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "constructor"
	    	},
	    	{
	    		"payable": false,
	    		"stateMutability": "nonpayable",
	    		"type": "fallback"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "_target",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": true,
	    				"name": "_desc",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": false,
	    				"name": "_value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "Initialize",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "Blacklist",
	    				"type": "address"
	    			}
	    		],
	    		"name": "Blacklisted",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "Whitelist",
	    				"type": "address"
	    			}
	    		],
	    		"name": "Whitelisted",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [],
	    		"name": "Pause",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [],
	    		"name": "Unpause",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "previousOwner",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": true,
	    				"name": "newOwner",
	    				"type": "address"
	    			}
	    		],
	    		"name": "RoleTransferred",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "burner",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": false,
	    				"name": "value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "Burn",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "owner",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": true,
	    				"name": "spender",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": false,
	    				"name": "value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "Approval",
	    		"type": "event"
	    	},
	    	{
	    		"anonymous": false,
	    		"inputs": [
	    			{
	    				"indexed": true,
	    				"name": "from",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": true,
	    				"name": "to",
	    				"type": "address"
	    			},
	    			{
	    				"indexed": false,
	    				"name": "value",
	    				"type": "uint256"
	    			}
	    		],
	    		"name": "Transfer",
	    		"type": "event"
	    	}
	    ];
	    
	    
	    window.addEventListener('load', function() {
	    	
				
	         /* if (typeof window.web3 !== "undefined") { */
	            web3js = new Web3(window.web3.currentProvider);
	            console.log("Connect to Mist/MetaMask");
	     
/* 	         } else {         

	            web3js = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
	            console.log("Connect to Localhost");
	          }
 */	         
	         web3js.eth.getBlockNumber(function(error, result) {
	            if (error != null) {
	               document.getElementById("current_account").textContent = "접속 ERROR : 블록 정보를 가져올 수 없습니다.";
	               baseBlock = -1;
	               accounts = null;
	            }
	            else {
	               baseBlock = result;
	               
	               web3js.eth.getAccounts(function(error, result) {
	                  if (error != null) {
	                     document.getElementById("current_account").textContent = "접속 ERROR : 계정 정보를 가져올 수 없습니다.";
	                     accounts = null;                     
	                  } else {
	                	
	                     greenToken = web3js.eth.contract(greenTokenABI).at("0xb0c217188c28496358fb1201adfbc6cdab93ac7a");
	                     document.getElementById("transfer_value").value = 0;
	                     document.getElementById("approve_value").value = 0;
	                     document.getElementById("transfer_from_value").value = 0;
	                     document.getElementById("eth_transfer_value").value = 0;
	                  }
	               });            
	            }
	         });  
		    	/* greenToken.balanceOf(wallet, function(error, result){
		    		if(error != null) {
		    			alert("balanceOf호출 실패");
		    		}
		    		var myBalance = result;
		    		$("#greenValue").text("GR : " + myBalance);
		    	})) */
	      });
	    
	    
		</script>
    </body>

</html>