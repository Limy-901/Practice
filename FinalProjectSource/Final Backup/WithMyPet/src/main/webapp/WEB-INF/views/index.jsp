<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 함께 산책해요 </title>
   <!-- google fonts -->  
   <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/icon/footprint16.png">
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/main.css">
  <!-- Template CSS -->
</head>

<body>

<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="#"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
         
      
      
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
                      	<a class="dropdown-item" href="walk/list.do?cp=1" >산책모집 </a>
                          <a class="dropdown-item" href="walk/board.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="product?catgo_code=9">쇼핑하기</a>
                          <a class="dropdown-item" href="cart">장바구니</a>
                          <a class="dropdown-item" href="order">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="board/list.do">공지사항</a>
                          <a class="dropdown-item" href="board/list.do">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/member/agree.do" style="font-family: 'Spoqa Han Sans Neo';">회원가입</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/member/mypage.do" style="font-family: 'Spoqa Han Sans Neo';">마이페이지 </a>
                  </li>
                  <!--<c:if test="${login.member_name eq 'admin'}"> </c:if>-->
                  <li class="nav-item">
                      <a class="nav-link" href="/admin/index.do" style="font-family: 'Spoqa Han Sans Neo';">관 리 </a>
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
          <c:if test="${!empty login}">
	          <div>
	          	<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>
	          </div>
          </c:if>
          <!-- //toggle switch for light and dark theme -->
      </nav>
  </div>
</header>
<!-- //header -->
  <!-- main-slider -->
  <section class="w3l-main-slider" id="home">
    <div class="companies20-content">
      <div class="owl-one owl-carousel owl-theme">
        <div class="item">
          <li>
            <div class="slider-info banner-view bg bg2">
              <div class="banner-info">
                <div class="container" >
                  <div class="banner-info-bg text-left">
                    <h5>산 책</h5 style="font-family: 'Spoqa Han Sans Neo'; color:white;"><br/>
                    <p>함께하는 산책문화를 만들어요.</p>
                    <a class="btn btn-style btn-white mt-sm-5 mt-4 mr-2" href="walklist.do">산책모집</a>
                    <a class="btn btn-style border-btn mt-sm-5 mt-4" href="walkboard.do" style="color:#ffb446;">산책후기</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info  banner-view banner-top1 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg ml-lg-auto">
                    <h5>쇼 핑</h5><br/>
                    <p>날개를 달아주세요!</p>
                    <a class="btn btn-style btn-white mt-sm-5 mt-4 mr-2" href="about.html">상품구경</a>
                    <a class="btn btn-style border-btn mt-sm-5 mt-4" href="contact.html" style="color:#ffb446;">후기구경</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top2 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg text-left">
                   
                    <h5>커뮤니티</h5><br/>
                    <p>함께 일상을 나눠요.</p>
                    <a class="btn btn-style border-btn mt-sm-5 mt-4" href="contact.html" style="border-color:#ffb446; color:#ffb446;">일상이야기</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
        <div class="item">
          <li>
            <div class="slider-info banner-view banner-top3 bg bg2">
              <div class="banner-info">
                <div class="container">
                  <div class="banner-info-bg ml-lg-auto">
                  </div>
                </div>
              </div>
            </div>
          </li>
        </div>
      </div>
    </div>
  </section>
  <!-- /main-slider -->
  <!--/grids-->
  <section class="w3l-grids-3 py-5" id="about">
    <div class="container py-md-5 py-3">
      <div class="bottom-ab-grids align-items-center">
        <div class="bottom-ab-left">
          <h6 class="sub-title">산책 친구 서비스</h6>
          <h2 class="hny-title">With My Pet</h2><br/>
          <p class="my-3">'위드마이펫' 은,<br/>모든 강아지들에게 친구가 생기기를 바라는 서비스입니다. <br/>근처의 산책 친구를 찾아보고, 커뮤니티를 통해 함께 일상을 나눌 수 있습니다.<br/>위드마이펫을 통해, 즐겁고 신나는 반려동물 생활을 즐기세요!</p>
            <a href="#read" class="read">Contact us</a>
        </div>
      </div>
    </div>
  </section>
  <!--//grids-->
  
<!-- 산책글 리스트 -->
<section class="w3l-features py-5" id="features">
  <div class="container py-lg-5 py-md-4">
    <div class="grids-area-hny main-cont-wthree-fea row">
    
      <c:if test="${empty walks}">
      	최근 산책글이 없습니다.
      </c:if>
      
      <c:forEach items="${walks}" var="item">
	      <div class="col-lg-4 col-sm-6 grids-feature">
	        <div class="area-box" style="text-align:center;">
	          <div class="icon">
	            <span class="fa fa-snowflake-o"></span>
	          </div><br/>
	          <label>${item.walk_date}</label><br/>
	          <img src="assets/images/f4.jpg">
	          <h4><a href="#feature" class="title-head">${item.walk_subject}</a></h4>
	          <p>${item.walk_content}</p>
	          <a href="walk/blog.do?idx=${item.walk_idx}" class="read">함께하기</a>
	        </div>
	      </div>
      </c:forEach>
      
      
    </div>
    <center><a href="walk/list.do?cp=1" class="read">전체 모집글 보기</a></center>
  </div>
</section>

<!-- stats -->
  <section class="w3l-stats py-5" id="stats">
    <div class="gallery-inner container py-lg-0 py-3">
      <div class="row stats-con pb-lg-3">
        <div class="col-lg-3 col-6 stats_info counter_grid">
          <p class="counter">730</p>
          <h4>총 산책 모집</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid1">
          <p class="counter">80</p>
          <h4>성사된 파티</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid mt-lg-0 mt-5">
          <p class="counter">812</p>
          <h4>참여를 기다리는 파티</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid2 mt-lg-0 mt-5">
          <p class="counter">90</p>
          <h4>오늘 행복해진 강아지</h4>
        </div>
      </div>
    </div>
  </section>
  <!-- //stats -->
  
<!-- //bottom-grids-->
  <!--//features-->
 
  <!-- pricing plans -->
<section class="w3l-pricing-7-main py-5" id="pricing">
  <div class="pricing-7-sec pt-lg-4 pt-md-3 pb-lg-5 pb-md-4">
      <div class="container pricing-grid">
          <div class="heading text-center mx-auto">
            <h6 class="sub-title">신상품</h6>
              <h3 class="hny-title mb-5">상품구경</h3>
          </div>
          <div class="pricing-sec-7">
              <!-- pricing grid 1 -->
              <div class="pricing-gd-left pric-7-1">
                  <div class="w3l-pricing-7">
                      <div class="w3l-pricing-7-top">
                      	<img src="assets/images/f1.jpg"><br/><br/>
                          <h6 class="one-light">상품명</h6>
                         
                          <h4>13,000<span>  원</span></h4>
                      </div>
                      <!-- 신상품순서 상품정렬 -->
                      <div class="w3l-pricing-7-bottom">
                          <div class="w3l-pricing-7-bottom-bottom">
                              <ul class="links">
                                  <li>
                                      <p class="lists">카테고리</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">상푸</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">설명할 것 있는지?</p>
                                  </li>
                              </ul>
                          </div>
                          <div class="buy-button">
                              <a class="popup btn btn-style btn-primary" href="#buy">Go!</a>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- //pricing grid 1 -->
              <!-- pricing grid 2 -->
              <div class="pricing-gd-left pric-7 active">
                  <div class="w3l-pricing-7">
                      <div class="w3l-pricing-7-top">
                      <img src="assets/images/f1.jpg"><br/><br/>
                          <h5>판매율 1위</h5>
                          <h6>상품명</h6>
                        
                          <h4>13,000<span>  원</span></h4>
                      </div>
                      <div class="w3l-pricing-7-bottom">
                          <div class="w3l-pricing-7-bottom-bottom">
                            <ul class="links">
                              <li>
                                      <p class="lists">카테고리</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">상푸</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">설명할 것 있는지?</p>
                                  </li>
                          </ul>
                          </div>
                          <div class="buy-button">
                              <a class="popup btn btn-style btn-primary" href="#buy">Go!</a>
                          </div>
                      </div>
                  </div>
              </div>
              <!-- pricing grid 1 -->
              <div class="pricing-gd-left pric-7-1">
                  <div class="w3l-pricing-7">
                      <div class="w3l-pricing-7-top">
                      	<img src="assets/images/f1.jpg"><br/><br/>
                          <h6 class="one-light">상품명</h6>
                         
                          <h4>13,000<span>  원</span></h4>
                      </div>
                      <!-- 신상품순서 상품정렬 -->
                      <div class="w3l-pricing-7-bottom">
                          <div class="w3l-pricing-7-bottom-bottom">
                              <ul class="links">
                                  <li>
                                      <p class="lists">카테고리</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">상푸</p>
                                  </li>
                                  <li>
                                      <p class="lists line-through">설명할 것 있는지?</p>
                                  </li>
                              </ul>
                          </div>
                          <div class="buy-button">
                              <a class="popup btn btn-style btn-primary" href="#buy">Go!</a>
                          </div>
                      </div>
                  </div>
              </div>
          </div><br/><br/>
          <center><a href="#read" class="read">전체 상품</a></center>
      </div>
  </div>
</section>

<!-- testimonials -->
<section class="w3l-clients" id="clients">
  <!-- /grids -->
  <!-- 이거는 페이징하면 될 듯 -->
  <div class="cusrtomer-layout py-5">
      <div class="container py-lg-4 py-md-3 pb-lg-0">
          <div class="heading text-center mx-auto">
              <h6 class="sub-title text-center">산책 후기</h6>
              <h3 class="hny-title mb-md-5 mb-4">산책 후기를 들려주세요!</h3>
          </div>
          <!-- /grids -->
          <div class="testimonial-width">
              <div id="owl-demo1" class="owl-two owl-carousel owl-theme">
              
                  <div class="item">
                      <div class="testimonial-content">
                          <div class="testimonial">
                              <blockquote>
                                  <q>최근 산책후기 내용 몇줄만 가져오기</q>
                              </blockquote>
                              <div class="testi-des">
                                  <div class="test-img"><img src="assets/images/f1.jpg" class="img-fluid" alt="client-img">
                                  </div>
                                  <div class="peopl align-self">
                                      <h3>작성자 이름</h3>
                                      <p class="indentity">산책 지역</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  
                  <div class="item">
                      <div class="testimonial-content">
                          <div class="testimonial">
                              <blockquote>
                                  <q>최근 산책후기 내용 몇줄만 가져오기</q>
                              </blockquote>
                              <div class="testi-des">
                                  <div class="test-img"><img src="assets/images/f1.jpg" class="img-fluid" alt="client-img">
                                  </div>
                                  <div class="peopl align-self">
                                      <h3>작성자 이름</h3>
                                      <p class="indentity">산책 지역</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  
                  <div class="item">
                      <div class="testimonial-content">
                          <div class="testimonial">
                              <blockquote>
                                  <q>최근 산책후기 내용 몇줄만 가져오기</q>
                              </blockquote>
                              <div class="testi-des">
                                  <div class="test-img"><img src="assets/images/f1.jpg" class="img-fluid" alt="client-img">
                                  </div>
                                  <div class="peopl align-self">
                                      <h3>작성자 이름</h3>
                                      <p class="indentity">산책 지역</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  
                  
                  
                  
              </div>
          </div>
      </div>
      <!-- /grids -->
  </div>
  <!-- //grids -->
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
  </section>
 

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
<!-- //footer-28 block -->
<!-- disable body scroll which navbar is in active -->
<script>

</script>
<!-- disable body scroll which navbar is in active -->

  <!-- Template JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="assets/js/theme-change.js"></script>
  <script src="assets/js/owl.carousel.js"></script>
  <!-- script for banner slider-->
  <script>
    $(document).ready(function () {
      $('.owl-one').owlCarousel({
        loop: true,
        margin: 0,
        nav: false,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          480: {
            items: 1,
            nav: false
          },
          667: {
            items: 1,
            nav: true
          },
          1000: {
            items: 1,
            nav: true
          }
        }
      })
    })
  </script>
  <!-- //script -->
  <!-- script for tesimonials carousel slider -->
<script>
  $(document).ready(function () {
    $("#owl-demo1").owlCarousel({
      loop: true,
      margin: 20,
      nav: false,
      responsiveClass: true,
      responsive: {
        0: {
          items: 1,
          nav: false
        },
        736: {
          items: 1,
          nav: false
        },
        1000: {
          items: 2,
          nav: false,
          loop: false
        }
      }
    })
  })
</script>
<!-- //script for tesimonials carousel slider -->
  <!-- stats number counter-->
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.countup.js"></script>
  <script>
    $('.counter').countUp();
  </script>
  <!-- //stats number counter -->
  <!-- video popup -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script>
  $(document).ready(function () {
    $('.popup-with-zoom-anim').magnificPopup({
      type: 'inline',

      fixedContentPos: false,
      fixedBgPos: true,

      overflowY: 'auto',

      closeBtnInside: true,
      preloader: false,

      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-zoom-in'
    });

    $('.popup-with-move-anim').magnificPopup({
      type: 'inline',

      fixedContentPos: false,
      fixedBgPos: true,

      overflowY: 'auto',

      closeBtnInside: true,
      preloader: false,

      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-slide-bottom'
    });
  });
</script>
<!-- //video popup -->

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
    