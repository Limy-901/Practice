<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Gallery </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/category.css">
  <!-- Template CSS -->
</head>

<body>
<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="../"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
         
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
                  
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';" >
                      	<a class="dropdown-item" href="walklist.do" >산책모집 </a>
                          <a class="dropdown-item" href="walkboard.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="blog.html">쇼핑하기</a>
                          <a class="dropdown-item" href="blog.html">구매후기</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="blog.html">공지사항</a>
                          <a class="dropdown-item" href="blog-single.html">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="gallery.html" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
                  </li>
                 
                  <li class="nav-item">
                      <a class="nav-link" href="contact.html">Contact </a>
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
<!-- //header -->


<!-- about breadcrumb -->
<section >
  <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div >
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="assets/images/banner5.jpg" height="400px" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/banner5.jpg" height="400px" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/banner5.jpg" height="400px" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          
      </div>
  </div>
</section>
<!-- //about breadcrumb -->
<!--/gallery-->
<section class="w3l-portfolio-8 py-5">
  <div class="portfolio-main py-md-4 py-3">
    <div class="container">
      <div class="header-section text-center mx-auto">
        <h6 class="sub-title">With My Pet ì¼í ì¹´íê³ ë¦¬</h6>
        <!--h3 class="hny-title">Latest Gallery</h3-->
        
        </div>
      <div class="row galler-top mt-lg-5 mt-4">
        <div class="col-md-4 protfolio-item hover14">
          <a href="blog.html" data-lightbox="example-set" class="mb-4"
            data-title="lorem ipsum dolor sit amet">
            
            <figure>
              <img src="assets/images/g1.jpg" alt="product" class="img-fluid" onclick="location.href='blog.html'" >
            </figure>
            <span class="sub-title text-center mb-2" >ì·</span>
          </a>
          <a href="assets/images/g2jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g2.jpg" alt="product" class="img-fluid">
            </figure>
            <span class="sub-title text-center mb-2">ê°ë°©</span>
          </a>
          <!--a href="assets/images/g7.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g7.jpg" alt="product" class="img-fluid"-->
            </figure>
          </a>
        </div>
        <div class="col-md-4 protfolio-item hover14">
          <a href="assets/images/g3.jpg" data-lightbox="example-set" class="mb-4"
            data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g3.jpg" alt="product" class="img-fluid">
            </figure>
          </a>
          <a href="assets/images/g4.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g4.jpg" alt="product" class="img-fluid">
            </figure>
          </a>
          <!--a href="assets/images/g8.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g8.jpg" alt="product" class="img-fluid"-->
            </figure>
          </a>
        </div>
        <div class="col-md-4 protfolio-item hover14">
          <a href="assets/images/g5.jpg" data-lightbox="example-set" class="mb-4"
            data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g5.jpg" alt="product" class="img-fluid">
            </figure>
          </a>
          <a href="assets/images/g6.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g6.jpg" alt="product" class="img-fluid">
            </figure>
          </a>
          <!--a href="assets/images/g9.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet">
            <figure>
              <img src="assets/images/g9.jpg" alt="product" class="img-fluid"-->
            </figure>
          </a>
        </div>

      </div>
    </div>
  </div>
</section>
  <!--//gallery-->
<!-- footer-28 block -->
<section class="w3l-footer">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28">Contact information</h6>
            <ul>
              <li>
                <p><strong>Address</strong> : #135 block, Barnard St. Brooklyn, London 10036, UK</p>
              </li>
              <li>
                <p><strong>Phone</strong> : <a href="tel:+(12)234-11-24">+(12)234-11-24</a></p>
              </li>
              <li>
                <p><strong>Email</strong> : <a href="mailto:example@mail.com">example@mail.com</a></p>
              </li>
            </ul>

            <div class="main-social-footer-28 mt-3">
              <ul class="social-icons">
                <li class="facebook">
                  <a href="#link" title="Facebook">
                    <span class="fa fa-facebook" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="twitter">
                  <a href="#link" title="Twitter">
                    <span class="fa fa-twitter" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="dribbble">
                  <a href="#link" title="Dribbble">
                    <span class="fa fa-dribbble" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="google">
                  <a href="#link" title="Google">
                    <span class="fa fa-google" aria-hidden="true"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Company</h6>
                <ul>
                  <li><a href="about.html">About Us</a></li>
                  <li><a href="blog.html">Blog Posts</a></li>
                  <li><a href="services.html">Services</a></li>
                  <li><a href="#pricing">Pricing</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Quick Links</h6>
                <ul>
                  <li><a href="contact.html">Contact Us</a></li>
                  <li><a href="#signup">Create account</a></li>
                  <li><a href="#learn">Care Center</a></li>
                  <li><a href="#feedback">Site Feedack</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28">Support</h6>
                <ul>
                  <li><a href="#URL">All Dogs</a></li>
                  <li><a href="#URL">Care Advices</a></li>
                  <li><a href="#URL">Care Support</a></li>
                  <li><a href="#URL">Veterinary Help</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
        <div class="container">
          <p class="copy-footer-28 text-center"> &copy; 2020 Pooch Care. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
  </button>
  <script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
      scrollFunction()
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
      } else {
        document.getElementById("movetop").style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
  <!-- /move top -->
</section>
<!-- //footer-28 block -->
<!-- disable body scroll which navbar is in active -->
<script>
  $(function () {
    $('.navbar-toggler').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
<!-- disable body scroll which navbar is in active -->

  <!-- Template JavaScript -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/theme-change.js"></script>
    <!-- libhtbox -->
    <script src="assets/js/lightbox-plus-jquery.min.js"></script>
    <!-- libhtbox -->
  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();

      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>