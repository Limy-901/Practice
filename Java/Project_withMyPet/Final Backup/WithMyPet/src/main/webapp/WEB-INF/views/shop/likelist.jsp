<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title> With My Pet | 마이페이지 </title>
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
      <div class="container py-lg-10" >
      <div class="content-info-in row">
      <div class="content-gd col-lg-9 pl-lg-9">
      <div class="title-content text-left mb-10">
      <div class="title-content text-left mb-10">
         <h3 class="hny-title">Like list</h3 >
         <br>
         <h4>💛 내가 찜 한 상품 n개</h4>
      </div>
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;					     
	      <div class=:container">
	      	<div class="row">
	      		<table class="table tavle=striped" style="text-align: center; border: 1px solid #dddddd">
	      			<thead>
	      				<tr>
      					<form method="get" action="form-action.html">
      					<th style="background-color: #eeeeee; text-align: center;">상품번호</th>
      					<th style="background-color: #eeeeee; text-align: center;">상품이미지</th>
      					<th style="background-color: #eeeeee; text-align: center;">판매가격</th>
      					<th style="background-color: #eeeeee; text-align: center;">수량</th>
      					<th style="background-color: #eeeeee; text-align: center;">제조사</th>
      					<th style="background-color: #eeeeee; text-align: center;">찜한날짜</th>    					
      					<th style="background-color: #eeeeee; text-align: center;">제품선택</th>
      				</tr>
      			</thead>
      			<tbody>
					<tr>
						<td>1</td>
						<td><img class="d-block w-70" src="assets/images/g10-6.jpg" height="50px" alt="First slide"></td>
						<td>22,000원</td>
						<td>2개</td>
						<td>울타리</td>
						<td>2021-02-05</td>
						<td><label class="check">
							<input type="checkbox">
							<span class="icon">
							</span>
							</label></td>
					</tr>
					<tr>
						<td>2</td>
						<td><img class="d-block w-70" src="assets/images/g10-15.jpg" height="50px" alt="First slide"></td>
						<td>32,000원</td>
						<td>1개</td>
						<td>울타리1</td>
						<td>2021-02-06</td>
						<td><input type='radio' name='like' value='product' checked/></td>
					</tr>
					<tr>
						<td>3</td>
						<td><img class="d-block w-70" src="assets/images/g10-1.jpg" height="50px" alt="First slide"></td>
						<td>44,000원</td>
						<td>1개</td>
						<td>울타리2</td>
						<td>2021-02-07</td>
						<td><input type='radio' name='like' value='product' checked/></td>
					</tr>   			
      			</tbody>
      		</table>
      		<a href="/pay" class="btn btn-primary pull-right">결제바로하기</a>
      		<input type="button" value="장바구니담기" onclick="alert('장바구니에 담겼습니다.마이페이에서 확인하세요');" />
      	</div>
      	<div class="container ">
      		<div class="text-center">
      			<h3 class="display-3 mt-5 mb-3">Commend list</h3>
      			<p>
      			추천 상품
      			</p>
      			</div>
      		</div>
				<div class="card-deck">
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g10-1.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">첫번쨰 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g10-15.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">두번째 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g10-6.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">세번째 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				</div>
				<div class="card-deck">
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g3-12.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">네번째 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g3-15.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">다섯번째 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				  <div class="card">
				    <img class="d-block w-80" src="assets/images/g3-4.jpg" height="100px" alt="First slide">
				    <div class="card-body">
				      <h5 class="card-title">Card title</h5>
				      <p class="card-text">여섯번째 상품은 다라라라라</p>
				      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				    </div>
				  </div>
				</div>
      <!-- //about breadcrumb -->
      <script src="assets/js/bootstrap.min.js"></script>
   </body>
</html>