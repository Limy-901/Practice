<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Home </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/follow.css">
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



  <section class="w3l-stats py-5" id="follow-stats">
    <div class="gallery-inner container py-lg-0 py-3">
      <div class="row stats-con pb-lg-3">
        <div class="col-lg-3 col-6 stats_info counter_grid">
          <div class="testi-des">
          	<div class="test-img">
          		<img src="../assets/images/f1.jpg" class="img-fluid" alt="client-img" style="width: 130px;">
          	</div>
          </div>
          <h4>내 프로필</h4>
        </div>
        <div id="my_post" class="col-lg-3 col-6 stats_info counter_grid1" button type="button" onclick="location.href =  '/mypost.do';">
          <p class="counter">80</p>
          <h4>게시물</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid mt-lg-0 mt-5" button type="button" onclick="location.href =  '/follower2.do';"> 
          <p class="counter">812</p>
          <h4>팔로우</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid2 mt-lg-0 mt-5">
          <p class="counter">90</p>
          <h4>팔로워</h4>
        </div>
      </div>
    </div>
  </section>
<br><br>

<div style="float:right; margin-right:190px;">
<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;John Smith
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Michael
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Choi Woo Jae
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>
<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lee soo Jin
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lim Yeon Ji
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lee Ok Suk
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Sung Jin Hee
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Cha Ji Hyeon
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Sam Smtih
  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Park Park
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>
</div>

  	
  <div style="float:left; margin-left:190px;">
<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;John Smith
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Michael
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Choi Woo Jae
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>
<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lee soo Jin
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lim Yeon Ji
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Lee Ok Suk
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Sung Jin Hee
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Cha Ji Hyeon
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Sam Smtih
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>

<div class="testi-des" style="margin-bottom:40px;">
       <center>
   <p><img src="../assets/images/f2.jpg" width="80" hight="80" align="middle">
   &nbsp;&nbsp;&emsp;&emsp;Park Park
   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  	<button onclick="location.href='follower.jsp'" class="btn btn-style border-btn mt-sm-5 mt-4">삭제</button>
  </p>
     </center>
</div>
</div>
  	
  	
</body>
</html>