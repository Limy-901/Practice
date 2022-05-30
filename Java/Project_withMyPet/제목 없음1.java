<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 산책모집 </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style-liberty.css">
  <link rel="stylesheet" href="../assets/css/walkform.css">
  <link rel="stylesheet" href="../assets/css/walkform.min.css">
  <link rel="stylesheet" href="../assets/css/semantic-modal/modal.css">
  <link rel="stylesheet" href="../assets/css/semantic-modal/modal.min.css">

  <link rel="stylesheet" href="../assets/js/semantic-modal/modal.js">
  <link rel="stylesheet" href="../assets/js/semantic-modal/modal.min.js">
  <link rel="stylesheet" href="../assets/js/semantic-modal/index.js">
  <link rel="stylesheet" href="../assets/js/semantic-modal/package.js">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  
    <link rel="stylesheet" href="../assets/css/blog.css">
  <!-- Template CSS -->
  
  <!--심볼시작  -->
  <svg display="none" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<defs>
<symbol id="icon-bubble" viewBox="0 0 1024 1024">
	<title>bubble</title>
	<path class="path1" d="M512 224c8.832 0 16 7.168 16 16s-7.2 16-16 16c-170.464 0-320 89.728-320 192 0 8.832-7.168 16-16 16s-16-7.168-16-16c0-121.408 161.184-224 352-224zM512 64c-282.784 0-512 171.936-512 384 0 132.064 88.928 248.512 224.256 317.632 0 0.864-0.256 1.44-0.256 2.368 0 57.376-42.848 119.136-61.696 151.552 0.032 0 0.064 0 0.064 0-1.504 3.52-2.368 7.392-2.368 11.456 0 16 12.96 28.992 28.992 28.992 3.008 0 8.288-0.8 8.16-0.448 100-16.384 194.208-108.256 216.096-134.88 31.968 4.704 64.928 7.328 98.752 7.328 282.72 0 512-171.936 512-384s-229.248-384-512-384zM512 768c-29.344 0-59.456-2.24-89.472-6.624-3.104-0.512-6.208-0.672-9.28-0.672-19.008 0-37.216 8.448-49.472 23.36-13.696 16.672-52.672 53.888-98.72 81.248 12.48-28.64 22.24-60.736 22.912-93.824 0.192-2.048 0.288-4.128 0.288-5.888 0-24.064-13.472-46.048-34.88-56.992-118.592-60.544-189.376-157.984-189.376-260.608 0-176.448 200.96-320 448-320 246.976 0 448 143.552 448 320s-200.992 320-448 320z"></path>
</symbol>
<symbol id="icon-star" viewBox="0 0 1024 1024">
	<title>star</title>
	<path class="path1" d="M1020.192 401.824c-8.864-25.568-31.616-44.288-59.008-48.352l-266.432-39.616-115.808-240.448c-12.192-25.248-38.272-41.408-66.944-41.408s-54.752 16.16-66.944 41.408l-115.808 240.448-266.464 39.616c-27.36 4.064-50.112 22.784-58.944 48.352-8.8 25.632-2.144 53.856 17.184 73.12l195.264 194.944-45.28 270.432c-4.608 27.232 7.2 54.56 30.336 70.496 12.704 8.736 27.648 13.184 42.592 13.184 12.288 0 24.608-3.008 35.776-8.992l232.288-125.056 232.32 125.056c11.168 5.984 23.488 8.992 35.744 8.992 14.944 0 29.888-4.448 42.624-13.184 23.136-15.936 34.88-43.264 30.304-70.496l-45.312-270.432 195.328-194.944c19.296-19.296 25.92-47.52 17.184-73.12zM754.816 619.616c-16.384 16.32-23.808 39.328-20.064 61.888l45.312 270.432-232.32-124.992c-11.136-6.016-23.424-8.992-35.776-8.992-12.288 0-24.608 3.008-35.744 8.992l-232.32 124.992 45.312-270.432c3.776-22.56-3.648-45.568-20.032-61.888l-195.264-194.944 266.432-39.68c24.352-3.616 45.312-18.848 55.776-40.576l115.872-240.384 115.84 240.416c10.496 21.728 31.424 36.928 55.744 40.576l266.496 39.68-195.264 194.912z"></path>
</symbol>
</defs>
</svg>
    <!--심볼끝  -->
 
</head>

<body>
<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="../"><img src="../assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
         
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
                      	<a class="dropdown-item" href="walklist.do" style="font-family: 'Spoqa Han Sans Neo';">산책모집 </a>
                          <a class="dropdown-item" href="walkboard.do" style="font-family: 'Spoqa Han Sans Neo';">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="blog.html" style="font-family: 'Spoqa Han Sans Neo';">쇼핑하기</a>
                          <a class="dropdown-item" href="blog.html" style="font-family: 'Spoqa Han Sans Neo';">구매후기</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="blog.html" style="font-family: 'Spoqa Han Sans Neo';">공지사항</a>
                          <a class="dropdown-item" href="blog-single.html" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="gallery.html" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
                  </li>
                 
                  <li class="nav-item">
                      <a class="nav-link" href="contact.html" style="font-family: 'Spoqa Han Sans Neo';">Contact </a>
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


<!-- /services-->
<!-- /services-grids-->
<section class="w3l-content-with-photo-4">
 <!-- 컨텐트 시작 -->
-
<div class="blog-container">
  

  <div class="blog-body" style="font-family: 'Spoqa Han Sans Neo';">
  	<p style="font-family: 'Spoqa Han Sans Neo';">${content.walk_date}</p>
    <div class="blog-title">
      <h1 style="font-family: 'Spoqa Han Sans Neo';"><a href="#" style="font-family: 'Spoqa Han Sans Neo';" >${content.walk_subject}</a></h1>
    </div>
    <div class="blog-author--no-cover">
       <a class="avatar" style="background-image: url("https://secure.meetupstatic.com/photos/member/2/b/b/7/thumb_250991191.jpeg");"></a>
	   <div class="img-circle img-circle-sm">
          <img src="../assets/images/f2.jpg" class="mr-3" alt="...">
       </div>
       <p class="name" style="font-family: 'Spoqa Han Sans Neo';">${content.walk_writer}님이 <b>${content.walk_location}</b> 에서 산책할 친구를 기다리고 있어요!</p>
    </div>
    


<!-- 맵 표시 -->

<div id="map" style="width:100%;height:350px;"></div><br/><br/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63be5e5f8d770d2796e1e45e8fcfebbd&libraries=services"></script>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 
// 키워드로 장소를 검색합니다
ps.keywordSearch("${content.walk_location}", placesSearchCB); 
// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();
        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}
// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });
    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>


 <div class="col-lg-3 col-sm-6 grids-feature">
        <div class="area-box">          
         <div class="col-md-4">
            <img src="../assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
         </div>        
       <div class="col-md-8 align-self" style="font-family: 'Spoqa Han Sans Neo';">  
        <p style="font-family: 'Spoqa Han Sans Neo';">2021년 2월 4일</p>
        <p style="font-family: 'Spoqa Han Sans Neo';">뽀미, 4살, 경계심이 많아요</p>       
          <p style="font-family: 'Spoqa Han Sans Neo';">대충 모집하는이의 내용입니다.</p>
        </div>
        </div>
      </div>
    
    
    <div class="blog-summary">
      <p style="font-family: 'Spoqa Han Sans Neo';">
		${content.walk_content}
		</p>
    </div>
    <div class="blog-tags" style="font-family: 'Spoqa Han Sans Neo';">
      <ul>
        <li><a href="#">${content.walk_location}</a></li>
        <li><a href="#">유저강아지정보</a></li>
        <li><a href="#">${content.walk_type}</a></li>
      </ul>
    </div>
  </div>
  
  <div class="blog-footer" style="font-family: 'Spoqa Han Sans Neo';">
    <ul>
      <li class="published-date">12분 전</li>
      <li class="comments"><a href="#"><svg class="icon-bubble"><use xlink:href="#icon-bubble"></use></svg><span class="numero">8</span></a></li>
      <li class="shares"><a href="#"><svg class="icon-star"><use xlink:href="#icon-star"></use></svg><span class="numero">3</span></a></li>
    </ul>
  </div>

</div>
<div class="modifies" style="font-family: 'Spoqa Han Sans Neo';">
 <a class="modify" href="update.do?idx=${content.walk_idx}">수정</a>
  <a class="modify" href="delete.do?idx=${content.walk_idx}">삭제</a>
</div>

<!-- 참가자리스트 -->


	<!-- 리스트 출력 -->
    <c:if test="${empty content.cmts}">
		<p>데이터가 없습니다.</p>
	</c:if>
	<div class="attendlabel" style="font-family: 'Spoqa Han Sans Neo';">
           <span>참가자 (5) </span>
    </div>
    <div class="row">
    
	    <c:forEach items="${content.cmts}" var="item" varStatus="status">
	    
	     
	     <!-- 신청댓글, click시 ajax로 해당 댓글 Data 가져옴  -->
		     <div class="col-lg-4 col-md-6 item">
		         <div class="card">
		             <div class="card-header p-0 position-relative">
		             	<a href="blog-single.html">
		                     <img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">
		                 </a>
		             	<input type="text" class="test1"  name=idx${item.walk_cmt_idx} value="${item.walk_cmt_idx}">
		             	<input type="button"  class="test2" value="자세히보기" onclick="getWalkCmt(${item.walk_cmt_idx})">
		             </div>
		             <div class="card-body blog-details" style="font-family: 'Spoqa Han Sans Neo';">
		                 <p>${item.walk_cmt_writer}</p>
		                 <p>${item.walk_cmt_content}</p>
		             </div>
		         </div>
		     </div>
	    
	     </c:forEach>
	     <script>
	     //$(document).ready(function(){
	    	 
	           //$('button.test2').on('click', function () {
	        	   //alert("r: " + $('.test1').val());
	                 
	        	   
	          // });
	        // });
	     
	     
			function getWalkCmt(idx){
				var idxNo = idx.value;
				alert("자바스크립트로 넘어옴:"+idx);
				$.ajax({
					  url: "getMemberData.do",
					  type: 'GET',
					  data: { 
						   idx: idx
					  },
					  success : function(data){
						  alert("들어오긴함");
						  window.location.href = "#popup2";
					  }
				});
			}
			
			
		</script>
   </div>
 
 <!-- 신청자리스트 -->
<div class="apply" style="font-family: 'Spoqa Han Sans Neo';">	 
    <div class="applylabel">
      	 <span>신청자 (6) </span>
    </div>
    <div class="applyrow">
    
       
   		<div class="col-lg-4 col-md-6 item">
           <div class="card">
                <div class="card-header p-0 position-relative">
                    <a href="#popup2"> <button class="detailbtn">자세히 보기</button>
                        <img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">
                    </a>
                    
                </div>
                <div class="card-body blog-details">
                    <p>차지현</p>
                    <p>세션아이디가 작성자일때(버튼뜸)</p>
                </div>
            </div>
       </div>
          
 	</div>
</div>




 
 
	 <!-- 참가팝업시작 -->
	<div id="popup1" class="overlay">
		<div class="popup">
			<center><h4 style="font-family: 'Spoqa Han Sans Neo';">같이 산책할래요!</h4></center><br>
			<a class="close" href="#">&times;</a>
			
			<div class="col-lg-3 col-sm-6 grids-feature">
		        <div class="area-box">          
		          <div class="col-md-4">
		            <img src="../assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
		          </div>        
			       <div class="col-md-8 align-self" style="font-family: 'Spoqa Han Sans Neo';">  
			          <p style="font-family: 'Spoqa Han Sans Neo';">2021년 2월 4일</p>
			          <p style="font-family: 'Spoqa Han Sans Neo';">뽀미, 4살, 경계심이 많아요</p>       
			          <p style="font-family: 'Spoqa Han Sans Neo';">대충 파티지원자의 내용입니다.</p>
			       </div>
		        </div>
	        </div>
			
	      <form class="ui form" method="post" action="apply.do" style="text-align:center;">
	          <div class="field">
			    <label style="font-family: 'Spoqa Han Sans Neo';">참가메세지</label>
			    <input type="hidden"  name="walk_idx" value="${content.walk_idx}">
			    <input type="hidden"  name="walk_cmt_writer" value="세션로그인유저">
			    <input type="text" name="walk_cmt_content" placeholder="만나실 견주분께 인사를 보내보세요!" style="font-family: 'Spoqa Han Sans Neo';"><br/>
			  </div>
	          <button type="submit" class="modify" style="border-color:none;">보내기</button>
		   </form>
	
		</div>
	</div>
	<!-- 참가팝업끝 -->


<!-- 자세히보기 시작-->
<div id="popup2" class="overlay" style="font-family: 'Spoqa Han Sans Neo';">
	<div class="popup">
		<a class="close" href="#">&times;</a>
		<h4 style="font-family: 'Spoqa Han Sans Neo';">참가 신청자의 강아지 상세정보</h4>
	 	<div class="col-lg-99 col-sm-6 grids-feature" style="font-family: 'Spoqa Han Sans Neo';">
	        <div class="area-box">          
		         <div class="col-md-4">
		            <img src="../assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
		         </div>        
		        <div class="col-md-8 align-self">  
			        <p style="font-family: 'Spoqa Han Sans Neo';">2021년 2월 4일</p>
			        <p style="font-family: 'Spoqa Han Sans Neo';">뽀미, 4살, 경계심이 많아요</p>       
			        <p style="font-family: 'Spoqa Han Sans Neo';">대충 파티지원자의 내용입니다.</p>
		        </div>
	        </div>
	    </div>
      	<div class="yesorno">
			<a href="" class="yesornobtn" style="font-family: 'Spoqa Han Sans Neo';">수락</a>
			<a href="" class="yesornobtn" style="font-family: 'Spoqa Han Sans Neo';">거절</a>
		</div>
	</div>
</div>
<!-- 자세히보기 끝-->


 <!-- 언더바 -->
		<div class="underbar" style="font-family: 'Spoqa Han Sans Neo';">
		  <span class="undertext" style="font-family: 'Spoqa Han Sans Neo';">일시 : ${content.walk_date}<br>
		    장소 : ${content.walk_location} / 산책 타입 : ${content.walk_type}</span>
		  <nav>
		   <a class="button" href="#popup1" style="font-family: 'Spoqa Han Sans Neo';">참가할래요:dog2:</a>
		  </nav>
		</div>
 <!-- 언더바 -->



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
  <!-- <script src="../assets/js/jquery-3.3.1.min.js" type="text/javascript"></script>-->

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
<script src="../assets/js/bootstrap.min.js"></script>
<section class="w3l-footer">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28" style="font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
            <ul>
              <li>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
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
</body>
</html>