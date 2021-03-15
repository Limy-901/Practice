<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="javax.servlet.http.HttpServletRequest"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 산책모집 </title>

  <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
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
  <link rel="stylesheet" href="../assets/css/postCard.css">
	<!-- sweetAlert -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.29.2/sweetalert2.all.js"></script>
	<!-- sweetAlert -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
 
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
                      <a class="nav-link" href="index.html" style="font-family: 'Spoqa Han Sans Neo';">Home <span class="sr-only">(current)</span></a>
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
                      	<a class="dropdown-item" href="/product?catgo_code=9" style="font-family: 'Spoqa Han Sans Neo';">쇼핑하기</a>
                        <a class="dropdown-item" href="/cart">장바구니</a>
                        <a class="dropdown-item" href="/order">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="/board/list.do" style="font-family: 'Spoqa Han Sans Neo';">공지사항</a>
                          <a class="dropdown-item" href="/board/list.do" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
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

  	<p style="font-family: 'Spoqa Han Sans Neo';">${content.day},&nbsp;&nbsp;&nbsp;<b>${content.time}</b> 에 만나요!</p>
    
    <div class="blog-author--no-cover">
       <a class="avatar" style="background-image: url('https://secure.meetupstatic.com/photos/member/2/b/b/7/thumb_250991191.jpeg');"></a>
	   <div class="img-circle img-circle-sm">
          <img src="../assets/images/f2.jpg" class="mr-3" alt="...">
       </div>
       <p class="name"><a href="../msg/chat.do?member_number=${content.dto.member_number}" style="font-family: 'Spoqa Han Sans Neo';"><b>${content.dto.walk_writer}</b></a>님이 <b>${content.dto.walk_location}</b> 에서 산책할 친구를 기다리고 있어요!</p>
    </div>
    <div class="blog-title">
      <h1 style="color:#FFB446;font-family: 'Spoqa Han Sans Neo';"><a href="#" style="font-family: 'Spoqa Han Sans Neo';" >${content.dto.walk_subject}</a></h1>
    </div><hr/><br/>
    </div>

<!-- 내 강아지 정보 -->
<center>
<div class="center" style="margin-top:20%; position: relative;">
    <label style="font-family: 'Spoqa Han Sans Neo'; font-size:1.5rem; font-weight:700;">회원 정보</label>
  <div class="mcard green">
    <div class="additional">
      <div class="user-mcard">
        <div class="level center">
          	회원 정보
        </div>
        <div class="points center">
          ${content.pet.pet_walkpoint} 포인트
        </div>
        
        <svg width="110" height="110" viewBox="0 0 250 250" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="title desc" class="center">
         
        </svg>
        
        
      </div>
      <div class="more-info">
        <h1>${content.memberData.member.member_name}</h1>
        <div class="coords">
          <span><b>최근 산책일</b> : ${content.memberData.detail.walk_day}</span><br>
          <span><b>받은 산책평</b> : "${content.memberData.detail.review}"</span>
        </div>
        <div class="stats">
          <div>
            <div class="title">산책</div>
            <i class="fa fa-trophy"></i>
            <div class="value">${content.memberData.detail.walk_count}</div>
          </div>
          <div>
            <div class="title">팔로잉</div>
            <i class="fa fa-group"></i>
            <div class="value">${content.memberData.detail.following}</div>
          </div>
          <div>
            <div class="title">팔로워</div>
            <i class="fa fa-group"></i>
            <div class="value">${content.memberData.detail.follower}</div>
          </div>
        </div>
      </div>
    </div>
    <div class="general">
      <h1 style="color:#FFB446; margin-top:3%;">${content.memberData.member.member_name}</h1><br>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>반려 동물</b> : ${content.pet.pet_name}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>성별</b> : ${content.pet.pet_sex}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>나이</b> : ${content.pet.pet_age}</p>
      <p style="text-align:center;font-family: 'Spoqa Han Sans Neo';"><b>주요 지역</b> : ${content.pet.pet_walkarea}</p>
      <span class="more" style="font-size:1.0rem;">Mouse over</span>
    </div>
  </div>
</div>
</center>
<!-- 맵 표시 -->
<div id="map" style="margin-top:-10%; width:100%;height:350px;"></div><br/><br/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63be5e5f8d770d2796e1e45e8fcfebbd&libraries=services"></script>
<script>
var infowindow = new kakao.maps.InfoWindow({zIndex:1});
var mapContainer = document.getElementById('map'),
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567),
        level: 100 };  
var map = new kakao.maps.Map(mapContainer, mapOption); 
var ps = new kakao.maps.services.Places(); 
ps.keywordSearch("${content.dto.walk_location}", placesSearchCB); 
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        var bounds = new kakao.maps.LatLngBounds();
        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x)); }       
        map.setBounds(bounds); } }
function displayMarker(place) {
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) });
    kakao.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker); }); }
</script>


 
 
 
 
 
 
 
 <!--  -->
    
  <!-- 태그 -->
  <div class="blog-summary"><p style="font-family: 'Spoqa Han Sans Neo';">${content.dto.walk_content}</p></div>
    <div class="blog-tags" style="font-family: 'Spoqa Han Sans Neo';">
      <ul>
        <li><a href="#" style="font-family: 'Spoqa Han Sans Neo';">${content.dto.walk_location}</a></li>
        <li><a href="#" style="font-family: 'Spoqa Han Sans Neo';">유저강아지정보</a></li>
        <li><a href="#" style="font-family: 'Spoqa Han Sans Neo';">${content.dto.walk_type}</a></li>
      </ul>
    </div>
  </div>
  


  
 <!-- 좋아요 버튼 -->
  <div class="blog-footer" style="font-family: 'Spoqa Han Sans Neo';">
  <a href="javascript:sendLink()" style="float:right; padding-left:2%;"><img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_small.png" /></a>
  	<c:choose>
  	
  		<c:when test="${empty content.likeToggle}">
  			<div id="colorHeart" style="display:relative; font-size: 30px; float:right;">
		      <a onclick='updateHeart()'><img style="width:35px; float:right;" src="../assets/images/icon/emptyHeart.png"></img></a>
		 	</div>
  		</c:when>
  		
  		<c:otherwise>
  			<div id="colorHeart" style="display:relative; font-size: 30px; float:right;">
		      <a onclick='deleteHeart()'><img style="width:35px; float:right;" src="../assets/images/icon/heart.png"></img></a>
		  </div>
  		</c:otherwise>
	      
	</c:choose>
	  <div id="heartZone" style="margin-left:84%; color:#FFB446;font-family: 'Spoqa Han Sans Neo'; font-size:1.34rem;">${content.dto.like}</div><br/>
	  
	  
  </div>
<script>
//카카오 공유하기
Kakao.init('63be5e5f8d770d2796e1e45e8fcfebbd');
function sendLink() {
 Kakao.Link.sendDefault({
   objectType: 'feed',
   content: {
     title: '함께 산책해요 :: With My Pet',
     description: '우리 강아지의 산책 친구',
     imageUrl: 'https://postfiles.pstatic.net/MjAyMTAzMDJfMTY1/MDAxNjE0NjgxMzk0MjY2.iMWrCceWl_Bat-8WehW_MPBWhiGWa_Zt3wpLYBrYrPgg.XAMxlGBwAYIdppCdX2H5CxObPeC-aYmLTvcYNXDLGAog.JPEG.misty901/Corg.jpg?type=w773',
     link: {
 	  mobileWebUrl: 'http://localhost:8080/walk/blog.do?idx='+${content.dto.walk_idx},
       webUrl: 'http://localhost:8080/walk/blog.do?idx='+${content.dto.walk_idx}
     }
   }
 })
}

// 좋아요 버튼 toggle 1
function updateHeart(){
	var walk_idx = ${content.dto.walk_idx};
	$.ajax({
		  url: "like.do",
		  type: 'GET',
		  data: { walk_idx: walk_idx },
		  success : function(data){
			  $('#heartZone').empty();
			  $('#colorHeart').empty();
			  var html2 = '<a onclick="deleteHeart()"><img style="width:35px; float:right;" src="../assets/images/icon/heart.png"></img></a>';
			  $('#colorHeart').html(html2);
			  var html = data;
			  $('#heartZone').html(html);
		  }
	});
}
// 좋아요 버튼 toggle 2
function deleteHeart(){
	var walk_idx = ${content.dto.walk_idx};
	$.ajax({
		  url: "deleteLike.do",
		  type: 'GET',
		  data: { walk_idx: walk_idx },
		  success : function(data){
			  $('#heartZone').empty();
			  $('#colorHeart').empty();
			  var html2 = '<a onclick="updateHeart()"><img style="width:35px; float:right;" src="../assets/images/icon/emptyHeart.png"></img></a>';
			  $('#colorHeart').html(html2);
			  var html = data;
			  $('#heartZone').html(html);
		  }
	});
}
</script>

</div>

<center><div class="modifies" style="font-family: 'Spoqa Han Sans Neo';">
  <a class="modify" href="update.do?idx=${content.dto.walk_idx}">수정</a>
  <a class="modify" href="delete.do?idx=${content.dto.walk_idx}">삭제</a>
</div></center>
</section>

<!-- Join 테이블 조회 -->
<div class="attendlabel" style="font-family: 'Spoqa Han Sans Neo';">
    <span id="joinCount">참가자   :  ${content.dto.join} 명</span>
</div>
<!--  -->
<!-- 참가자리스트 -->
<c:if test="${empty content.dto.joinCmts}">
	<p id="emptyJoinNo" style="text-align:center; font-family: 'Spoqa Han Sans Neo';">산책 참가자가 없습니다.</p>
</c:if>

<div class="applyrow" id="joinList" style="margin-left:10%; margin-right:10%;">
 <c:forEach items="${content.dto.joinCmts}" var="item" varStatus="status">
 
 <!-- 승인된 참가자 리스트  -->
  <div class="col-lg-4 col-md-6 item">
      <div class="card" id="card${item.walk_cmt_idx}">
          <div class="card-header p-0 position-relative">
          		<input type="hidden" class="test1"  name=idx${item.walk_cmt_idx} value="${item.walk_cmt_idx}">
               <img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">
          </div>
          <div class="card-body blog-details" style="font-family: 'Spoqa Han Sans Neo'; flex:0 0 auto;">
              <p>${item.walk_cmt_writer}</p>
              <p>${item.walk_cmt_content}</p>
          </div>
      </div>
  </div>
   
   <script>
   $ (function(){
   	  $(".detailbtn").css("display", "none");	
   });
   $('#card'+${item.walk_cmt_idx}).mouseover(function () {
 	  $('#detailbtn'+${item.walk_cmt_idx}).css("display", "block");
   
   });

   $('.card').mouseout(function () {
 	  $('#detailbtn'+${item.walk_cmt_idx}).css("display", "none");
   });
   </script>
 
  </c:forEach>
  
  <script>
   /* 자세히보기버튼 > 해당 CMT 글쓴이 정보 추출  */
	function getWalkCmt(idx){
		$.ajax({
			  url: "getMemberData.do",
			  type: 'GET',
			  data: { idx: idx},
			  success : function(map){
			   		if(map.length != 0){
			   			$('#pet_name').text(map.Comment.walk_cmt_writer+' 님과 \n 반려동물 '+map.Pet.pet_name);
			    		$('#pet_birthday').text(map.Pet.pet_age);
			    		$('#pet_character').text(map.Comment.walk_cmt_content);
			    		$('#pet_date').text(map.Comment.walk_cmt_date);
			    		$('#joinWalkIdx').text(map.Comment.walk_idx);
			    		$('#joinCmtIdx').text(map.Comment.walk_cmt_idx);
			    		
			    		window.location.href = "#popup2";
			   		}else{
			   			alert("데이터 없음");
			   		}
				  window.location.href = "#popup2";
			  }
		});
	}
	</script>
</div><hr style="width:50%;"/><br/><br/>

<div class="attendlabel" style="font-family: 'Spoqa Han Sans Neo';">
    <span id="applyCount">신청자   :  ${content.dto.apply} 명</span>
</div>
    
<c:if test="${empty content.dto.normalCmts}">
	<p id="emptyApplyNo" style="text-align:center; font-family: 'Spoqa Han Sans Neo';">산책 신청자가 없습니다.</p>
</c:if>

<!-- 신청자 목록 -->
<div class="applyrow" id="applyList">
<c:forEach items="${content.dto.normalCmts}" var="item" varStatus="status">
	<div class="col-lg-4 col-md-6 item">
       <div class="card" id="card${item.walk_cmt_idx}" onmouseover='btnOn(${item.walk_cmt_idx})' onmouseout='btnOut(${item.walk_cmt_idx})'>
           <div class="card-header p-0 position-relative">
           		<input type="hidden" class="test1"  name=idx${item.walk_cmt_idx} value="${item.walk_cmt_idx}">
                <button id="detailbtn${item.walk_cmt_idx}" class="detailbtn" onclick="getWalkCmt(${item.walk_cmt_idx},${content.dto.walk_idx})">자세히 보기</button>
                <img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">
           </div>
           <div class="card-body blog-details" style="font-family: 'Spoqa Han Sans Neo'; flex:0 0 auto;">
               <p>${item.walk_cmt_writer}</p>
               <p>${item.walk_cmt_content}</p>
           </div>
       </div>
   </div> 
</c:forEach>
   
   <script>
   $ (function(){
   	$(".detailbtn").css("display", "none");	
   });
   function btnOn(data){
 	  $('#detailbtn'+data).css("display", "block");
   }
   function btnOut(data){
 	  $('#detailbtn'+data).css("display", "none");
   }
   </script>
  

</div><br/><br/><br/>
 
 <!-- 참가팝업시작 -->
<div id="popup1" class="overlay" style="z-index:1;">
	<div class="popup">
		<center><h4 style="font-family: 'Spoqa Han Sans Neo';">같이 산책할래요!</h4></center><br>
		<p style="font-family: 'Spoqa Han Sans Neo'; text-align:center;">작성자가 승인해야 참가자가 됩니다.</p>
		<a class="close" href="#">&times;</a>
		
		<!-- 내정보 -->
		<div class="col-lg-3 col-sm-6 grids-feature">
	        <div class="area-box">          
	          <div class="col-md-4">
	            <img src="../assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
	          </div>        
		       <div class="col-md-8 align-self" style="font-family: 'Spoqa Han Sans Neo';">
		          <p style="font-family: 'Spoqa Han Sans Neo';">${login.member_name}</p>
		          <p style="font-family: 'Spoqa Han Sans Neo';">${mpvo.pet_name}, ${mpvo.pet_sex}, ${mpvo.pet_age}</p>       
		          <p style="font-family: 'Spoqa Han Sans Neo';">${mpvo.walkarea}</p>
		       </div>
	        </div>
        </div>
	  <!-- 참여 메시지 -->
      <form id="cmtInsert" class="ui form" method="post" style="text-align:center;">
          <div class="field">
		    <label style="font-family: 'Spoqa Han Sans Neo';">참가메세지</label>
		    <input type="hidden"  name="walk_idx" value="${content.dto.walk_idx}">
		    <input type="text" id="cmt_walk_cmt_content" placeholder="만나실 견주분께 인사를 보내보세요!" style="font-family: 'Spoqa Han Sans Neo';"><br/>
		  </div>
          <button class="modify" onclick="insertCheck(${content.dto.walk_idx})" style="border-color:none;">보내기</button>
	   </form>
	</div>
</div>
<script>
function insertCheck(walk_idx){
	alert("작동은 됩니당.");
	var content = document.getElementById("cmt_walk_cmt_content").value;
	$.ajax({
		url: "apply.do",
	    type: 'GET',
	    async: false,
	    data: { 
	    	walk_cmt_content: content,
		    walk_idx: walk_idx
		},
	  success : function(data){
		if(data == ''){
			alert("이미 신청했습니다!");
			window.location.href = "#applyCount";
		}else{
			  $('#joinList').empty();
			  $('#applyList').empty();
			  $('#joinCount').empty();
			  $('#applyCount').empty();
			  alert(data.joinCount+", "+applyCount);
			  var html1='';
			  var html2='';
			  var html3='신청자   :  '+data.joinCount+' 명';
			  var html4='신청자   :  '+data.applyCount+' 명';
			  for(var i=0;i<data.normal.length;i++) {
				  html1 += '<div class="col-lg-4 col-md-6 item">';
				  html1 += '<div class="card" id="card'+data.normal[i].walk_cmt_idx+'" onmouseover="btnOn('+data.normal[i].walk_cmt_idx+')" onmouseout="btnOut('+data.normal[i].walk_cmt_idx+')">';
				  html1 += '<div class="card-header p-0 position-relative">';
				  html1 += '<input type="hidden" class="test1"  name=idx'+data.normal[i].walk_cmt_idx+' value="'+data.normal[i].walk_cmt_idx+'">';
				  html1 += '<button id="detailbtn'+data.normal[i].walk_cmt_idx+'" class="detailbtn" onclick="getWalkCmt('+data.normal[i].walk_cmt_idx+')">자세히 보기</button>';
				  html1 += '<img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">';
				  html1 += '</div>';
				  html1 += '<div class="card-body blog-details" style="font-family: "Spoqa Han Sans Neo"; flex:0 0 auto;">';
				  html1 += '<p>'+data.normal[i].walk_cmt_writer+'</p><p>'+data.normal[i].walk_cmt_content+'</p></div></div></div>';
			  }
			  for(var i=0;i<data.join.length;i++) {
				  html2 += '<div class="col-lg-4 col-md-6 item">';
				  html2 += '<div class="card" id="card'+data.join[i].walk_cmt_idx+'" onmouseover="btnOn('+data.join[i].walk_cmt_idx+')" onmouseout="btnOut('+data.join[i].walk_cmt_idx+')">';
				  html2 += '<div class="card-header p-0 position-relative">';
				  html2 += '<input type="hidden" class="test1"  name=idx'+data.join[i].walk_cmt_idx+' value="'+data.join[i].walk_cmt_idx+'">';
				  html2 += '<button id="detailbtn'+data.join[i].walk_cmt_idx+'" class="detailbtn" onclick="getWalkCmt('+data.join[i].walk_cmt_idx+')">자세히 보기</button>';
				  html2 += '<img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">';
				  html2 += '</div>';
				  html2 += '<div class="card-body blog-details" style="font-family: "Spoqa Han Sans Neo"; flex:0 0 auto;">';
				  html2 += '<p>'+data.join[i].walk_cmt_writer+'</p><p>'+data.join[i].walk_cmt_content+'</p></div></div></div>';
			  }
			  $('#emptyJoinNo').empty();
			  $('#emptyApplyNo').empty();
			  if(data.normal.length == 0) html1 += '<p id="emptyJoinNo" style="text-align:center; font-family: "Spoqa Han Sans Neo";">산책 참가자가 없습니다.</p>';
			  if(data.join.length == 0) html2 += '<p id="emptyApplyNo" style="text-align:center; font-family: "Spoqa Han Sans Neo";">산책 신청자가 없습니다.</p>';
			  
			  $('#applyList').html(html1);
			  $('#joinList').html(html2);
			  $('#applyCount').html(html3);
			  $('#joinCount').html(html4);
			  alert("신청을 완료했습니다!");
			  $(".detailbtn").css("display", "none");
			  window.location.href = "#joinCount";
		}
	  }
	});
}
</script>
<!-- 참가팝업끝 -->


<!-- 자세히보기 시작-->
<div id="popup2" class="overlay" style="font-family: 'Spoqa Han Sans Neo'; z-index:1;">
	<div class="popup">
		<a class="close" href="#">&times;</a>
		<h4 style="text-align:center; margin:auto;font-family: 'Spoqa Han Sans Neo';">참가 신청자</h4>
	 	<div class="col-lg-99 col-sm-6 grids-feature" style="font-family: 'Spoqa Han Sans Neo';">
	        <div class="area-box">          
		         <div class="col-md-4">
		            <img src="../assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
		         </div>        
		        <div class="col-md-8 align-self"> 
		        	<input id="joinCmtIdx" type="hidden">
		        	<input id="joinWalkIdx" type="hidden">
		        	<div id="pet_name"><p style="font-family: 'Spoqa Han Sans Neo';"><b>강아지 이름</b></p></div>
			        <div id="pet_birthday"><p style="font-family: 'Spoqa Han Sans Neo';">2021년 2월 4일</p></div>
			        <div id="pet_character"> <p  style="font-family: 'Spoqa Han Sans Neo';">뽀미, 4살, 경계심이 많아요</p></div>
			        <div id="pet_date"><p style="font-family: 'Spoqa Han Sans Neo';">대충 파티지원자의 내용입니다.</p></div>
		        </div>
		        	
	        </div>
	    </div>
	    <center>
      	<div class="yesorno">
			<button id="yesBtn" class="yesornobtn" onclick="walkJoinOk()" style="font-family: 'Spoqa Han Sans Neo';">수락</button>
		</div>
		</center>
	</div>
</div>

<script>
function walkJoinOk(){
	var joinIdx = $('#joinCmtIdx').text();
	var joinWalkIdx = $('#joinWalkIdx').text();
	alert("joinWalkIdx :"+joinWalkIdx+", joinWalkIdx : "+joinWalkIdx);
	$.ajax({
		  url: "join.do",
		  type: 'GET',
		  async: false,
		  data: { 
				  joinIdx: joinIdx,
				  joinWalkIdx: joinWalkIdx
			  },
		  success : function(data){
			  alert("성공!"+data);
			  if(data == ''){
				  alert("이미 수락했습니다!");
				  window.location.href = "#joinCount";
			  }else{
				  $('#joinList').empty();
				  $('#applyList').empty();
				  $('#joinCount').empty();
				  $('#applyCount').empty();
				  alert(data.joinCount+", "+applyCount);
				  var html1='';
				  var html2='';
				  var html3='신청자   :  '+data.joinCount+' 명';
				  var html4='신청자   :  '+data.applyCount+' 명';
				  for(var i=0;i<data.normal.length;i++) {
					  html1 += '<div class="col-lg-4 col-md-6 item">';
					  html1 += '<div class="card" id="card'+data.normal[i].walk_cmt_idx+'" onmouseover="btnOn('+data.normal[i].walk_cmt_idx+')" onmouseout="btnOut('+data.normal[i].walk_cmt_idx+')">';
					  html1 += '<div class="card-header p-0 position-relative">';
					  html1 += '<input type="hidden" class="test1"  name=idx'+data.normal[i].walk_cmt_idx+' value="'+data.normal[i].walk_cmt_idx+'">';
					  html1 += '<button id="detailbtn'+data.normal[i].walk_cmt_idx+'" class="detailbtn" onclick="getWalkCmt('+data.normal[i].walk_cmt_idx+')">자세히 보기</button>';
					  html1 += '<img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">';
					  html1 += '</div>';
					  html1 += '<div class="card-body blog-details" style="font-family: "Spoqa Han Sans Neo"; flex:0 0 auto;">';
					  html1 += '<p>'+data.normal[i].walk_cmt_writer+'</p><p>'+data.normal[i].walk_cmt_content+'</p></div></div></div>';
				  }
				  for(var i=0;i<data.join.length;i++) {
					  html2 += '<div class="col-lg-4 col-md-6 item">';
					  html2 += '<div class="card" id="card'+data.join[i].walk_cmt_idx+'">';
					  html2 += '<div class="card-header p-0 position-relative">';
					  html2 += '<input type="hidden" class="test1"  name=idx'+data.join[i].walk_cmt_idx+' value="'+data.join[i].walk_cmt_idx+'">';
					  html2 += '<img class="card-img-bottom d-block" src="../assets/images/g1.jpg" alt="Card image cap">';
					  html2 += '</div>';
					  html2 += '<div class="card-body blog-details" style="font-family: "Spoqa Han Sans Neo"; flex:0 0 auto;">';
					  html2 += '<p>'+data.join[i].walk_cmt_writer+'</p><p>'+data.join[i].walk_cmt_content+'</p></div></div></div>';
				  }
				  
				  $('#emptyJoinNo').empty();
				  $('#emptyApplyNo').empty();
				  if(data.normal.length == 0) html1 += '<p id="emptyJoinNo" style="text-align:center; font-family: "Spoqa Han Sans Neo";">산책 참가자가 없습니다.</p>';
				  if(data.join.length == 0) html2 += '<p id="emptyApplyNo" style="text-align:center; font-family: "Spoqa Han Sans Neo";">산책 신청자가 없습니다.</p>';
				  $('#applyList').html(html1);
				  $('#joinList').html(html2);
				  $('#applyCount').html(html3);
				  $('#joinCount').html(html4);
				  alert("수락을 완료했습니다!");
				  $(".detailbtn").css("display", "none");
				  window.location.href = "#joinCount";
			  }
		  }
	 });
}
</script>
 		<!-- 참가버튼 바, 내가 작성한 글일때는 숨김 처리 -->
		<div class="underbar" style="font-family: 'Spoqa Han Sans Neo'; z-index:1; background-color:#FFB446">
		  <span class="undertext" style="font-family: 'Spoqa Han Sans Neo';">일시 : ${content.day} / ${content.time}<br>
		    장소 : ${content.dto.walk_location} / 산책 타입 : ${content.dto.walk_type}</span>
		  <c:choose>
		  	<c:when test="${login.member_number eq content.dto.member_number}">
		  	<div style="border-color:white; font-family: 'Spoqa Han Sans Neo'; margin-right: 10%; color:white;">내가 작성한 글입니다</div>
		  	</c:when>
		  	<c:otherwise>
			  <nav>
			   <a class="button" onclick="memberCheck()" style="border-color:white; font-family: 'Spoqa Han Sans Neo'; margin-left: -150%; color:white;">참가할래요🐕</a>
			  </nav>
			</c:otherwise>
		  </c:choose>
		</div>
 <script>
 function memberCheck(){
	 var here = '${mpvo}';
	 if(here != '') {
		 window.location.href = "#popup1";
	 }
	 else {
		Swal.fire({
			  title: '강아지 정보를 입력하세요!',
			  text: "마이페이지에서 나의 강아지 정보를 입력하고 오세요.",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '작성',
			  cancelButtonText: '취소'
			}).then((result) => {
			  if (result.value) {
				  location.href="../member/mypage.do";
			  }
		})
	 }
 }
 </script>

<script>
  $(function () {
    $('.navbar-toggler').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>

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
  <script src="../assets/plugins/common/common.min.js"></script>
  <script src="../assets/js/admin/custom.min.js"></script>
  <script src="../assets/js/admin/settings.js"></script>
  <script src="../assets/js/admin/gleek.js"></script>
  <script src="../assets/js/admin/styleSwitcher.js"></script>
</body>
</html>