<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>:: With My Pet :: 함께 산책해요 | 장바구니 </title>
     <!-- google fonts -->  
     <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
     <!-- google fonts --> 
    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/cart.css">
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
<!--%@ include file="경로" %-->
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
                <img class="d-block w-100" src="assets/images/2ban1.jpg" height="400px" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/2ban2.jpg" height="400px" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/2ban1.jpg" height="400px" alt="Third slide">
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

<section>        
<div class="container py-lg-5" >
      <div class="content-info-in row">
      <div class="content-gd col-lg-5 pl-lg-4">
      <div class="title-content text-left mb-2">
      <div class="title-content text-left mb-2">
         <h3 class="hny-title">장바구니</h3 ></br>
         <ul class="tag" align="left">
                  <li class="design">장바구니</li> > <li class="design1">주문</li> > <li class="design1">결제 </li>
               </ul>
      </div>
      </br>
       <td align="center">
        
       <table border="3" >
      <table class="table--1aTBT9emfH" >
      <cation>
      <span class="blind">장바구니 내역</span>
       <c:if test="${empty viewlists}">
                  없음
               </c:if>
          
      </cation>
      <colgroup>
      <col class="col_1--5TSKjnuT7E">
      <col class="col_2--YKLfiddUoQ">
      <col class="col_3--3kO7FM0QDn">
      <col class="col_4--2HuEbgLS2c">
      <col class="col_5--1Q8JnXqems">
      </colgroup>
      <thread>
         <tr>
            <th class="th--1G-vGQPU9O" scope="col">코드</th>
            <th class="th--1G-vGQPU9O" scope="col">상품정보</th>
            <th class="th--1G-vGQPU9O" scope="col">상품사진</th>
            <th class="th--1G-vGQPU9O" scope="col">수량선택</th>
            <th class="th--1G-vGQPU9O" scope="col">size선택</th>
            <th class="th--1G-vGQPU9O" scope="col">주문금액</th>
         </tr>
         <tr>
         </thread>
         <tbody>
         <c:forEach items="${cartLists}" var="cartList" varStatus="status">     
	         <tr class="table_row--2U-tpJvyb0">
	            <td name="product_code" id="product_code" type="text" value="${cartList.product_code}" class="table_cell--275JhdiLLN">${cartList.product_code}</td>
	            <td name="product_content" id="product_content" type="text" value="${cartList.product_content}" class="table_cell--275JhdiLLN">${cartList.product_content}</td>
	            <td class="table_cell--275JhdiLLN"><img src="assets/images/g10-6.jpg" width=70 height=70 align="center"/></td>
	            <td name="product_amount" id="product_amount" type="text" value="${cartList.product_amount}" class="table_cell--275JhdiLLN">${cartList.product_amount}</td>
	            <td name="product_color" id="product_size" type="text" value="${cartList.product_size}" class="table_cell--275JhdiLLN">${cartList.product_size}</td>
	            <td name="product_price" id="product_price" type="text" value="${cartList.product_price}" class="table_cell--275JhdiLLN">${cartList.product_price}</td>
	         </tr>
         
	          <tr>
	            <th class="table_cell--275JhdiLLN"> </th>
	            <th class="table_cell--275JhdiLLN"> </th>
	            <th class="table_cell--275JhdiLLN"> </th>
	            <th class="table_cell--275JhdiLLN"> </th>
	            <th class="table_cell--275JhdiLLN"> </th>
	            <th class="table_cell--275JhdiLLN"></br>주문 총 금액 </br>
	            <input type="text" name="product_price" id="product_price" value="${cartList.product_price}" /></th>
	         </tr>
	         </c:forEach>
         </tbody>
        
         </table>
        
      </table>
       </form>
      </td>
      </div>
      </br>
      <h3> 주문 금액 정보</h3></br> 
      <div class="order_calculator--2zlH_jz09P">
      <div class="product_price_detail--uc8kecGUYk">
      <dl class="product_price--2hbbWXbdsD">
      <dt> 총 상품 금액</dt>
      <dd>
      <span class="price--mkyVLxZMtX">27,900</span>원 +
      </dd>
      </dl>
      <dl class="product_price--2hbbWXbdsD">
      <dt> 배송비</dt>
      <dd>
      <span class="price--mkyVLxZMtX">27,900</span>원 
      </dd>
      </dl>
      </div>
      <div class="product_price_total--3Qb27-JOGF">
      <span class="text_mart--2kMJYDiHte">총 주문금액
      <span class="price--mkyVLxZMtX"> 12400
      </span>원
      
      </span>
      </div>
        
      </div>
      <!-- //about breadcrumb -->
<!-- //content-6-->
</br>
<button type="reset" class="popup btn btn-style btn-primary"  style="float: center;" >리스트비우기&nbsp;</button>&nbsp;&nbsp;&nbsp;
         &nbsp;<button type="submit" class="popup btn btn-style btn-primary"  style="float: right;" >결제하기&nbsp;</button>&nbsp;
         &nbsp;<button type="button" class="popup btn btn-style btn-primary" style="float: left;" onClick="location.href='product?catgo_code=9'">쇼핑계속하기</button>&nbsp;
  <script src="assets/js/bootstrap.min.js"></script>
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
    
    function add_cart(product_code){
    	$.ajax({
    		type: "post",
    		async: false,
    		url: "addProductsInCart",
    		data: {product_code:product_code},
    		success: function(data, textStatus){
    			if(data.trim()=='add_success'){
    				alert("성공하셨습니다");
    			}else if(data.trim()=='already_existed'){
    				alert("이미 카트에 등록된 제품입니다");
    			}
    		},
    		error: function(data, textStatus){
    			alert("에러가 발생했습니다."+data);
    		},
    		complete: function(data, textStatus){
    			alert("작업을 완료했습니다");;
    		}
    		
    	});
    }
  </script>
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>