<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Blog </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-liberty.css">
  <!-- Template CSS -->
</head>

<body>
  <!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <h1><a class="navbar-brand" href="index.html">
              With My Pet 
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
                  <li class="nav-item">
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
                  <li class="nav-item dropdown active">
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
                      <a class="nav-link" href="contact.html">Contact</a>
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
<section class="w3l-about-breadcrumb text-center">
  <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container py-2">
          <h2 class="title">겨울 패딩 제품</h2>
          <ul class="breadcrumbs-custom-path mt-2">
              <li><a href="#url">Home</a></li>
              <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Single Post </li>
          </ul>
      </div>
  </div>
</section>
<!-- //about breadcrumb -->

<section class="w3l-blog-single" id="blog">
  <section class="w3l-blog-single1 py-5">
    <div class="container py-lg-5">
      <div class="d-grid-1">
        <div class="text">
          <ul class="tag">
              <li class="design">best item</li>
          </ul>
          <h3 class="hny-title mt-3">애견 겨울 옷 </h3>
          <tr>
            <h4>&nbsp;</h4>
   <table>
      <tr>
         <td>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" align="center" data-interval="false"> 
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" >
            <div class="carousel-item active" >
              <img class="d-block w-100" src="assets/images/g10-6.jpg" height="400px" alt="First slide">
            </div>
            <div class="carousel-item" >
              <img class="d-block w-100" src="assets/images/g10-15.jpg" height="400px" alt="Second slide">
            </div>
            <div class="carousel-item" >
              <img class="d-block w-100" src="assets/images/g10-1.jpg" height="400px" alt="Third slide">
            </div>
            </div>
            </div>
            </table>
            <!--img src="assets/images/g10-1.jpg" width="350" height="450"-->
         </td>
         <td align="center">
            <table border="3" >
            <table class="table" >
              <colgroup>
              <col style="width: 50%">
           <tr>
            <tr></br>
              <td>상품명</td>
              <td>${vo.productName}</td>
            </tr>
            <tr>
              <td>가격</td>
              <td><fmt:formatNumber value="${vo.productPrice}" pattern="###,###,###"/></td>
            </tr>
              <tr align="center">
                <td>상품소개</td>
                <td>${vo.productContent}</td>
                </t>
              </tr>
             
                </td>
                <td>  
                  <form name="form1" method="post" action="경로">
                    &nbsp;color 선택 &nbsp;</br> 
                  </td>
                  <td>
                  <input type="hidden" name="productName" value="${vo.productName}">
                  &nbsp;<select name="productAmount" >==$0
                        <option value="핑크">핑크</option>
                        <option value="아이보리">아이보리</option>
                        <option value="민트">민트</option>
                        <option value="퍼플">퍼플</option>
                        </select>
                      </td>
                    </tr>
                  <td>
                    <form name="form1" method="post" action="경로">수량 선택 &nbsp;</br></td>
                      <td>
                      <input type="hidden" name="productAmount" value="${vo.productAmount}">
                      &nbsp;<select name="name">==$0
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                      </select>  &nbsp;개
                    </br>
                  </td>
                  <tr>
                    <td>
                    <form name="form1" method="post" action="경로">
                      &nbsp;Size 선택 &nbsp;</br> 
                    </td>
                    <td>
                      <input type="hidden" name="productAmount" value="${vo.productAmount}">
                      &nbsp;<select name="name" align="center" >==$0
                            <option value="1">S</option>
                            <option value="2">M</option>
                            <option value="1">L</option>
                            <option value="2">XL</option>
                          </select>&nbsp;사이즈
                    </td> &nbsp;
                  </tr>
                  </form>
              </td>
            </tr></br></br>
            <td colspan="4">&nbsp;<input type="submit" style="text-align:left;" value="장바구니에 담기">
            </br>
            </br><a href="blog.html">상품목록</a>
                  </td>
            </table>
         </td>
      </tr>
   </table>
          </tr>
        </div>
      </div>
      <div class="text-bg-image">
        <!--img src="assets/images/g10-1.jpg" alt="애견패딩" width="340" height="300" class="img-fluid radius-image"-->
      </div>
      <div class="text-content-text">
        <div class="d-grid-2">
          <div class="text2">
            <p class="mt-md-0 mt-4 ml-md-4 ml-0"> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <h4 class="text-head-text-9" align="center">
                <a href="#text"> </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                 
                <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <p class="text2-text2 mt-2" align="center">
                <a align="center">안녕하세요~~!💕</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                With My Pet 입니다! </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                베이직한 디자인과 컬러로 </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>오랫동안 착용해도 질리지 않는 </br> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>기본 아이템이에요^^*</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                모든 의류는 스판끼 있는 원단을 사용해서 입고 </br> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>벗기기 편함은 물론아이들이 입었을때</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p> 활동하기도 편하답니다.</br>
                </a></h4>
                </p>
            </p>
            <div class="text-content-text">
              <div class="d-grid-2">
                <div class="text2">
                  <p class="mt-md-0 mt-4 ml-md-4 ml-0"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <h4 class="text-head-text-9" align="center">
                      <a href="#text"></br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                      </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br></br>
                      <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <img src="assets/images/g10-2.jpg" width="650" height="500" align="center">
                      <p class="text2-text2 mt-2" align="center">
                      <a align="center"></br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>                     
                        목 뒷부분에 리드줄을 </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>연결할 수 있는 리드홀이 있어</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p> 편안하게 산책할 수 있습니다. <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                      <img src="assets/images/g15.jpg" width="650" height="500" align="center"> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></p>
                      <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br>
                      <img src="assets/images/g10-3.jpg" width="650" height="500" align="center"></br>
                <p class="text2-text2 mt-2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;퍼플 컬러 [S , M, L, XL] &nbsp;&nbsp;&nbsp;&nbsp;</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br>
                <img src="assets/images/g10-4.jpg" width="650" height="500" align="center"></br></br></br>
                <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;아이보리 컬러 [S , M, L, XL]</p></br></br>
                <img src="assets/images/g10-7.jpg" width="650" height="500" align="center"></br></br></br>
                <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;민트 컬러 [S , M, L, XL] </p> </br></br>
                <img src="assets/images/g10-8.jpg" width="650" height="500" align="center"></br></br>
                <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;핑크 컬러 [S , M, L, XL] </p></br></br></br></br></br> 
                <img src="assets/images/g10-9.jpg" width="650" height="500" align="center"></br></br></br>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>

                <img src="assets/images/g10-5.jpg" width="650" height="500" align="center">
                <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;</p> 
                      </a></h4>
                      </p>
                  </p>
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <h4 class="text-head-text-9" align="center">
              <a href="#text">후리스 베어베스트 </br>
              </h4>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p class="text2-text2 mt-2" align="center">With My Pet 의류 부분 베스트 스테디셀러 디자인, 후리스 베어 베스트입니다.</br>
            가벼우면서도 도톰한 후리스 소재로 보언성이 우수하고 부드럽고 </br> 신축성이 있어 편안하게 입을 수 있습니다.</br>
          작은 곰을 연상시키는 귀여운 후드와 앙증맞은 꼬리 포인트로 </br>입었을때 더욱 사랑스럽게 연출해줍니다.</p>
          </div><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        </div>
      </div>
    </div>
  </section>
  <!-- text-styles-33 -->
  
  <!-- /text-styles-33 -->
  <!-- text -->
  <section class="w3l-blog-single3">
    <div class="text-element-9">
      <div class="container">
        <div class="d-grid grid-text-9">
          <div class="right-text-9">
            <h4 class="text-head-text-9" align="center"><a href="#text">사이즈 소개</a></h4>
           <img src="assets/images/g10-10.jpg" width="800" height="650" align="center">
           <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
              <h4 class="text-head-text-9" align="center"><a href="#text">모델</a></h4>
           <img src="assets/images/g10-11.jpg" width="700" height="300" align="center">
           <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;빼로(포메라니안) 3kg/ M착용      이오(포메라니안) 2.5kg/ M 착용</p>
            
            
            <div class="social-share-blog mt-4">
              <ul class="column3 social m-0 p-0">
                  <li>
                      <h4 class="m-0 mr-md-4 mr-2">공유해보세요 :</h4>
                  </li>
                  <li><a href="https://www.facebook.com/" class="facebook"><span class="fa fa-facebook"></span></a></li>
                  <!--li><a href="https://www.kakaocorp.com/service/KakaoTalk" class="twitter"><span class="fa fa-twitter"></span></a></li-->
                  <li><a href="https://www.instagram.com/" class="instagram"><span class="fa fa-instagram"></span></a></li>
              </ul>
          </div>


            <nav class="post-navigation row mt-5 py-4">
              <div class="post-prev col-6 pr-sm-5">
                <span class="nav-title">
                  <span class="fa fa-angle-double-left"></span> 이전 게시글 </span>
                <a href="#url" rel="prev" class="posts-view posts-view-left">
                  <img src="assets/images/g13.jpg" class="img-fluid postimg radius-image d-none d-md-block">
                  <label>원피스</label>
                </a>
              </div>
              <div class="post-next col-6 pl-sm-5 text-right">
                <span class="nav-title">
                  다음 게시물 <span class="fa fa-angle-double-right"></span> </span>
                <a href="#url" rel="next" class="posts-view posts-view-right">
                  <label>크리스마스</label>
                  <img src="assets/images/g8.jpg" class="img-fluid postimg radius-image d-none d-md-block">
                </a>
              </div>
            </nav>

          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //text -->



  
<!-- text-styles-30 -->
<section class="w3l-blog-single4">
  <div class="text-styles-30_sur py-5">
    <div class="container py-lg-3">
      <div class="text-styles-top-30">
        <h3 class="title-blog mb-4">최근 코멘트</h3>
        <div class="media">
          <div class="img-circle">
            <img src="assets/images/g10-12.jpg" class="mr-3" alt="...">
          </div>
          <div class="media-body">
            <h5 class="mt-0">덕자맘</h5>
            <span class="time">210204</span>
            <p>L사이즈 구매했는데 3kg 말티즈에게는 조금 커요 근데 너무 귀여워요</p>
            <a href="#reply-form" class="reply">Reply</a>

            <div class="media mt-4">
              <a class="" href="#">
                <div class="img-circle img-circle-sm">
                  <img src="assets/images/g10-13.jpg" class="mr-3" alt="...">
                </div>
              </a>
              <div class="media-body">
                <h5 class="mt-0">지훈93</h5>
                <span class="time">210204</span>
                <p>옷예뻐요</p>
                <a href="#reply-form" class="reply">Reply</a>
              </div>
            </div>
          </div>
        </div>


        <div class="media mt-5">
          <div class="img-circle">
            <img src="assets/images/g10-14.jpg" class="mr-3" alt="...">
          </div>
          <div class="media-body">
            <h5 class="mt-0">Yunjipretty</h5>
            <span class="time">210204</span>
            <p>저희 애기한테는 XL도 조금 작네요 ㅠㅠ
            </p>
            <a href="#reply-form" class="reply">Reply</a>
          </div>
        </div>


      </div>
    </div>
  </div>
</section>
<!-- /text-styles-30 -->
<!-- /text-styles-30 -->
  <section class="w3l-blog-single5">
    <div class="grid-main py-3">
      <div class="container">
        <div class="horizontal-align">
          <div class="grids-titles">
            <h3 class="title-blog mb-4">관련 상품페이지</h3>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="blog-single.html">
                            <img class="card-img-bottom d-block" src="assets/images/g3.jpg" alt="Card image cap">
                        </a>

                    </div>
                    <div class="card-body blog-details">
                        <a href="blog-single.html" class="blog-desc">애견 방석
                        </a>
                        <p>아늑하고 푹신한 애견 방석</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <a href="#author">29,000</a> - <span class="meta-value">#푹신함</span>
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
            <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="blog-single.html">
                            <img class="card-img-bottom d-block" src="assets/images/g4.jpg" alt="Card image cap">
                        </a>
                    
                    </div>
                    <div class="card-body blog-details">
                        <a href="blog-single.html" class="blog-desc">애견 사료
                        </a>
                        <p> 영양듬뿍 애견 간식</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <a href="#author">59000</a> - <span class="meta-value"> #건강#건식 </span>
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
        </div>
      </div>
  </section>
  <!-- form 29 block -->
<section class="w3l-blog-single6" id="reply-form">
  <div class="form-29 py-5">
      <div class="container pb-lg-3">
          <div class="form-main-cont-29">
              <div class="content-29-form align-center">
                  <h3 class="title-blog mb-4">코멘트를 남겨주세요</h3>
                  <form action="#" method="post">
                      <div class="w3l-forms-29-form">
                          <div class="">
                              <input type="text" class="form-control" name="name" placeholder="Your Name*" required>
                          </div>
                          <div class="">
                              <input type="email" class="form-control" name="email" placeholder="Email Address*"
                                  required>
                          </div>
                          <div class="">
                              <input type="text" class="form-control" name="subject" placeholder="Subject">
                          </div>
                          <div class="">
                              <input type="phone" class="form-control" name="subject" placeholder="Phone">
                          </div>
                      </div>
                      <div class="mt-4">
                          <textarea class="contact-textarea form-control" placeholder="Your Message*"
                              required></textarea>
                      </div>
                      <div class="text-right mt-4">
                          <button class="btn btn-style btn-primary">Add Comment</button>
                      </div>
                  </form>
              </div>
          </div>
      </div>
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