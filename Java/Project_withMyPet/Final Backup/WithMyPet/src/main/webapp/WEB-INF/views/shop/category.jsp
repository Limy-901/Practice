<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>With My Pet | 쇼핑 소분류 </title>
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
                  </a>
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
                  <li class="nav-item">
                      <a class="nav-link" href="../">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                      	<a class="dropdown-item" href="walklist.do">산책모집 </a>
                          <a class="dropdown-item" href="walkboard.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                      	<a class="dropdown-item" href="product">쇼핑하기</a>
                          <a class="dropdown-item" href="cart">장바구니</a>
                          <a class="dropdown-item" href="order">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                          <a class="dropdown-item" href="blog.html">공지사항</a>
                          <a class="dropdown-item" href="blog-single.html">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="gallery.html">로그인 </a>
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
<section class="w3l-blog-block py-5">
  <div class="container py-lg-4 py-md-3">
      <div class="heading text-center mx-auto">
          <span class="sub-title text-center mb-2"></span>
          <h3 class="hny-title mb-5">
            상세 카테고리</h3>
      </div>
      <div class="row">
          <div class="col-lg-4 col-md-6 item">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="productDes?catgo_code=9&review_number=6&product_code=8">
                          <img class="card-img-bottom d-block" src="assets/images/g10-6.jpg" alt="Card image cap">
                      </a>
                      
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single2.html" class="blog-desc">애견 겨울 옷</a>
                      <p>F/W 시즌 OFF 진행중!! 수량이 얼마 남지 않았습니다!! </p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">₩9,900</a> - <span class="meta-value">태그자리#베스트</span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-md-0 mt-5">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g14.jpg" alt="Card image cap">
                      </a>
                    
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">사계절 애견옷
                      </a>
                      <p>베이직한 디자인과 컬러</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">₩7,900</a> - <span class="meta-value"> 태그자리#심플#산뜻한컬러 </span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-lg-0 mt-5">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g10.jpg" alt="Card image cap">
                      </a>
                     
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">애견 후드티
                      </a>
                      <p>로고 후드티&맨투맨</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">#25,000</a> - <span class="meta-value">#편안#데일리 </span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-5 pt-lg-3">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g7.jpg" alt="Card image cap">
                      </a>
                     
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">수면조끼
                      </a>
                      <p>수면조끼</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">₩16,000</a> - <span class="meta-value"> #편안#누빔 </span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-5 pt-lg-3">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g11.jpg" alt="Card image cap">
                      </a>
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">네오프란 한복
                      </a>
                      <p>계량한복</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">₩25,000</a> - <span class="meta-value">#네오프란</span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-5 pt-lg-3">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g8.jpg" alt="Card image cap">
                      </a>
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">크리스마스
                      </a>
                      <p>산타 원피스/티셔츠</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">₩16,000</a> - <span class="meta-value"> #빅사이즈구비</span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-5 pt-lg-3">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g12.jpg" alt="Card image cap">
                      </a>
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">올인원
                      </a>
                      <p>면 100% 올인원</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">24,000</a> - <span class="meta-value">#파자마 </span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-md-6 item mt-5 pt-lg-3">
              <div class="card">
                  <div class="card-header p-0 position-relative">
                      <a href="blog-single.html">
                          <img class="card-img-bottom d-block" src="assets/images/g13.jpg" alt="Card image cap">
                      </a>
                     
                  </div>
                  <div class="card-body blog-details">
                      <a href="blog-single.html" class="blog-desc">원피스
                      </a>
                      <p>신축성좋은소재 원피스</p>
                      <div class="author align-items-center mt-3 mb-1">
                          <a href="#author">24,000</a> - <span class="meta-value"> #앵두 프린팅 </span>
                      </div>
                      <ul class="blog-meta">
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                          </li>
                          <li class="meta-item blog-students">
                              <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                          </li>
                      </ul>
                  </div>
              </div>
          </div>
         
      </div>
      <!-- pagination -->
       <div class="pagination-wrapper mt-5">
          <ul class="page-pagination">
      <c:forEach begin="1" end="${listResult.totalPageCount}" var="i"  >
        <a href="category?cp=${i}" >
           <c:choose>
               <c:when test="${i==listResult.cp}" >
                  <strong>${i}</strong>
               </c:when>
              <c:otherwise>
                 ${i}
              </c:otherwise>
           </c:choose>
        </a>&nbsp;
    </c:forEach> 
    </ul>
      </div>     
      <!-- //pagination -->
  </div>
</section>
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
                <p><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
              </li>
              <li>
                <p><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
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
                <h6 class="footer-title-28">Walk Service</h6>
                <ul>
                  <li><a href="about.html">Cha Ji Hyun</a></li>
                  <li><a href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Shopping Service</h6>
                <ul>
                  <li><a href="contact.html">Lee Ok Seok</a></li>
                  <li><a href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28">Member Service</h6>
                <ul>
                  <li><a href="#URL">Choi Woo Jae</a></li>
                  <li><a href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
        <div class="container">
          <p class="copy-footer-28 text-center"> &copy; 2021 With My Pet. All Rights Reserved.
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
  <!-- js for portfolio lightbox -->
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