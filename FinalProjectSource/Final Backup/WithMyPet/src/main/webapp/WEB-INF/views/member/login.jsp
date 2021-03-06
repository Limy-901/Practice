<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document)
			.ready(
					function() {
						$("#google-login")
								.click(
										function() {
											window
													.open("https://accounts.google.com/o/oauth2/v2/auth?"
															+ "client_id=1074707418128-sgd1uis9lslvip02f4a6gnadnog15c88.apps.googleusercontent.com"
															+ "&redirect_uri=http://localhost:8080/login/google/auth"
															+ "&response_type=code"
															+ "&scope=email%20profile%20openid"
															+ "&access_type=offline");
										});
					});
</script>
<head>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Home </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/login.css">
  <!-- Template CSS -->
</head>

	<style>
	  	form {
	  		margin-top: 10px;
	  	}
	</style>

<body>
  <!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <h1><a class="navbar-brand" href="index.html">
               Pooch Care
          </a></h1>
          <!-- if logo is image enable this   
      <a class="navbar-brand" href="#index.html">
          <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
      </a> -->
          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
              data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
              </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="about.html">About</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="services.html">Services</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="gallery.html">Gallery</a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Blog<span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                          <a class="dropdown-item" href="blog.html">Blog Posts</a>
                          <a class="dropdown-item" href="blog-single.html">Blog single</a>
						   <a class="dropdown-item" href="landing-single.html">Landing Page</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="login.do">Login</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="agree.do">Signup</a>
                  </li>
              </ul>
          </div>
          <!-- toggle switch for light and dark theme -->
          <div class="mobile-position">
              <nav class="navigation">
                  <div class="theme-switch-wrapper">
                      <label class="theme-switch" for="checkbox">
                          <input type="checkbox" id="checkbox">
                          <div class="mode-container">
                              <i class="gg-sun"></i>
                              <i class="gg-moon"></i>
                          </div>
                      </label>
                  </div>
              </nav>
          </div>
          <!-- //toggle switch for light and dark theme -->
      </nav>
  </div>
</header>
&nbsp;


<!-- //header -->
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
table {
	margin: 0 auto;
	border-collapse: separate !important;
    border-spacing: 0 10px;
}
button {
	margin-bottom: 30px
}

.sns-login-btn img {
vertical-align: middle;
	width: 200px;
    height: 48px;
    margin-top: 15px;
}
.sns-login-btn span {
	    font-weight: 600;
    vertical-align: middle;
}

</style>
</head>

		
		
	<!-- //header -->
		<div style="text-align:center">
		
		
		<section class="w3l-contact-1 pt-5"id="contact">
  <div class="contacts-9 pt-lg-4">
      <h5 class="sub-title text-center mb-2">With Us!</h5>
      <h3 class="hny-title text-center mb-5">Log In</h3>
      <div class="container pb-lg-4 modify-container">
          <div class="d-grid">
           
              <div class="map-content-9 mt-lg-0 mt-md-4 mt-2">
                  <!--<form action="https://sendmail.w3layouts.com/submitForm" method="post">-->
                  <form action="login.do" method="post">
                      <div class="input-wrap">
                          <input type="email" class="form-control" name="member_email" id="w3lName" placeholder="E-MAIL"
                              required="">
                          <input type="text" class="form-control" name="member_password" id="w3lSender" placeholder="PASSWORD"
                              required="">
                      </div>
                      <button type="submit" class="btn btn-primary mt-4">Log in</button>
                  </form>
     
				


<!-- 네이버 -->
		<div class="sns-buttons">
		
			<div class="SnsLoginBtn">
				<a input type="button" id="naver-login" value="naver" class="sns-login-btn">			
						<img src="../assets/images/naver_login2.PNG"> 			
				</a>
			</div>
					
			
			
<!-- 카카오 -->			
			<div class="SnsLoginBtn">
				<a input type="button" id="kakao-login" value="kakao" class="sns-login-btn">
					<img src="../assets/images/kakao_login_large_narrow.png">
				</a>
			</div>
			
			

<!-- 구글 -->
			<div class="SnsLoginBtn">
				<a input type="button" id="google-login" value="google" class="sns-login-btn">
					<img src="../assets/images/google_login.png" >
				</a>
			</div>
			
		</div>



	</div>
</body>
</html>