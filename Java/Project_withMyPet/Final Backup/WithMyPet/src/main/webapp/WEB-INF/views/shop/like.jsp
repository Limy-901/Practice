<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title> With My Pet | 주문페이지 </title>
      <!-- google fonts -->  
      <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
      <!-- google fonts --> 
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/css/order.css">
      <!-- Template CSS -->
   </head>
   <body>
      <!--header-->
      <header id="site-header" class="fixed-top">
         <div class="container">
            <nav class="navbar navbar-expand-lg stroke">
               <a href="../"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
              
               <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                  data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                  aria-label="Toggle navigation">
               <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
               <span class="navbar-toggler-icon fa icon-close fa-times"></span>
               
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
      <div class="container py-lg-5" >
      <div class="content-info-in row">
      <div class="content-gd col-lg-5 pl-lg-4">
      <div class="title-content text-left mb-2">
      <div class="title-content text-left mb-2">
         <h3 class="hny-title">주문 상세내용</h3 >
      </div>
      </br>
      
      <table class="table" >
         <tr>
            <th>상품코드</th>
            <th>상품정보</th>
            <th>판매가격</th>
            <th>수량</th>
            <th>주문금액</th>
         </tr>
         <tr>
            <td>01</td>
            <td>이건 꼭 사야해</td>
            <td>12000</td>
            <td>1</td>
            <td>12000</td>
         </tr>
         <tr>
            <td>02</td>
            <td>나도 오리 목뼈..</td>
            <td>22000</td>
            <td>3</td>
            <td>66000</td>
         </tr>
          <tr>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
            <th>주문 총 금액 </br>
            <input type="text" name="orderRec" id="orderRec" required="required" /></th>
         </tr>
      </table>
      <table class="table" >
         <colgroup>
            <col style="width:50%">
         </colgroup>
         <tr>
            <td>회원 명</td>
            <td><input type="text" name="orderRec" id="orderRec" required="required" /></td>
         </tr>
         <tr>
                           <td>
                           <form name="form1" method="post" action="경로">
                           &nbsp;결제 방법 &nbsp;</br> 
                           </td>
                           <td>
                           <input type="hidden" name="productAmount" value="${vo.productAmount}">
                           &nbsp;<select name="name" align="center" >==$0
                           <option value="1">계좌 이체</option>
                           <option value="2">카드 결제</option>
                           </select>
                           </td>
                           </tr>
         
        <tr>
         <td>
         <form name="form1" method="post" action="경로">회원 주소 &nbsp;</br></td>
         <td>
         <input type="hidden" name="productAmount" value="${vo.productAmount}">
         &nbsp;<input type="text" name="orderRec" id="orderRec" required="required" />
         </br>
         </td>
         </tr>
         <tr>
         <td>
         <form name="form1" method="post" action="경로">
         	회원 이메일 &nbsp;</br> 
         </td>
         <td>
         <input type="hidden" name="productAmount" value="${vo.productAmount}">
         <input type="text" name="orderRec" id="orderRec" required="required" />
         </td> &nbsp;
         </tr>
         </form>
         </td>
         </tr>
      </table>
      </table>      
      <div class="inputArea">
         
         <button type="button" class="cancel_btn"  style="float: right;" >취소</button>
         <button type="submit" class="order_btn"  style="float: right;" >주문</button>
         
          
      </div>
      <!-- //about breadcrumb -->
      <script src="assets/js/bootstrap.min.js"></script>
   </body>
</html>