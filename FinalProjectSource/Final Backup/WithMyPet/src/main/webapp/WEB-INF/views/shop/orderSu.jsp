<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Services </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/orderSu.css">
  <!-- Template CSS -->
</head>

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
                  <li class="nav-item">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="about.html">About</a>
                  </li>
                  <li class="nav-item active">
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
        <h2 class="title">Order/Pay</h2>
        <ul class="breadcrumbs-custom-path mt-2">
            <li><a href="#url">주문하기</a></li>
            <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> 결제하기 </li>
        </ul>
      </div>
    </div>
  </section>
  <div class="order-box"> 
  <div class="content-6-mian py-5">
    <div class="container py-lg-5">
      <div class="content-info-in row">
        <div class="content-gd col-lg-5 pl-lg-4">
          <div class="title-content text-left mb-2">
          </div>
    <div class="title-content text-left mb-2">
      <h6 class="sub-title">With my pet </h6>
      <h3 class="hny-title">주문/결제</h3>
      <div class="orderInfo">
    <table class="table table-striped">
    <tr>
      <th>제목</th>
    </tr>  
    <tr>
      <td>내용</td>
    </tr>   
    </table>

 <form role="form" method="post" autocomplete="off">
    
  <input type="hidden" name="amount" value="${sum}" />
    
  <div class="inputArea">
   <label for="">구매자 이름:</label>
   <input type="text" name="orderRec" id="orderRec" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="orderPhon">구매자 번호:</label>
   <input type="text" name="orderPhon" id="orderPhon" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="userAddr1">구매자 주소:</label>
   <input type="text" name="userAddr1" id="userAddr1" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="userAddr2">구매자 메일:</label>
   <input type="text" name="userEmail" id="userEmail" required="required" />
  </div>
  
  <div class="inputArea">
   <button type="submit" class="order_btn">주문</button>
   <button type="button" class="cancel_btn">취소</button> 
  </div>
 </form> 
</div>
    </div>
  </div>
  
    
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>