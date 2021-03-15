<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>:: With My Pet :: 함께 산책해요 </title>
		<link rel="icon" type="image/png" sizes="16x16" href="../assets/images/icon/footprint16.png">
		<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="../assets/css/style-liberty.css">
		<link rel="stylesheet" href="../assets/css/chat.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <link rel="stylesheet" href="../assets/css/button/button.min.css">
        <link rel="stylesheet" href="../assets/css/button/button.css">
	    <!-- sweetAlert -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.29.2/sweetalert2.all.js"></script>
		<!-- sweetAlert -->
	</head>
<body>
<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="#"><img src="../assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
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
                      <a class="nav-link" href="../">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';" >
                      	<a class="dropdown-item" href="../walk/list.do?cp=1">산책모집 </a>
                          <a class="dropdown-item" href="../board/list.do?board_idx=4">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="../product?catgo_code=9">쇼핑하기</a>
                          <a class="dropdown-item" href="../cart">장바구니</a>
                          <a class="dropdown-item" href="../order">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="../board/list.do">공지사항</a>
                          <a class="dropdown-item" href="../board/list.do">일상이야기</a>
                      </div>
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
          <div>
          <!-- 읽지 않은 메시지 확인 -->
          	 <c:choose>
	          	<c:when test="${unread eq 0}">
	          		<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>
	          	</c:when>
	          	<c:otherwise>
	          		<i class="mdi mdi-bell-outline"></i>
                    <span id="unreadCount" class="badge badge-pill gradient-2" style="position:absolute; margin-top:-1.3%; padding-left:1.6%;
                     margin-right:2%; color:#ffb446;">${unread}</span>
	          		<div id="msgZone"><a href="/msg/chat.do"><img src="../assets/images/icon/colorMessage.png"></a></div>
	          	</c:otherwise>
	          </c:choose>
          </div>
      </nav>
  </div>
</header>
<!-- //header -->

  
  <!-- 본문 -->
  <div class="container bootstrap snippets bootdey" style="margin-top:5%;">
    <div class="row">
		<div class="col-md-4 bg-white " style="width:110%;">
           
            <ul class="friend-list"><br><br>
            	<div id="chatList">
            	<c:if test="${empty map.msgLists}">
            		<li class="active bounceInDown">
	                	<a href="#" class="clearfix">
	                		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
	                		<div>	
	                			<strong>현재 도착한 메시지가 없습니다.</strong>
	                		</div>
	                	</a>
	                </li>
            	</c:if>
            	
            	<!-- 메세지 리스트 -->
            	<c:forEach items="${map.msgLists.chatList}" var="list" varStatus="status">
	                <li>
	                	<c:choose>
                		<c:when test="${list.sender_number eq login.member_number}">
               				<a onclick="msgClick(${list.member_number})" class="clearfix">
                		</c:when>
                		<c:otherwise>
               				<a onclick="msgClick(${list.sender_number})" class="clearfix">
                		</c:otherwise>
	                	</c:choose>
	                		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">
	                		<div class="friend-name">	
		                		<c:choose>
		                			<c:when test="${list.sender_name eq login.member_name}">
		                				<strong>${list.member_name}</strong>
		                			</c:when>
		                			<c:otherwise>
		                				<strong>${list.sender_name}</strong>
		                			</c:otherwise>
		                		</c:choose>
	                		</div>
	                		<div class="last-message text-muted">${list.msg_content}</div>
	                		<small class="time text-muted">${list.time}</small>
	                		<c:choose>
	                			<c:when test="${list.sender_number eq login.member_number}">
		                			<c:choose>
				                		<c:when test="${empty list.opendate}">
				                			<small class="chat-alert label label-danger">1</small>
				                		</c:when>
				                		<c:when test="${!empty list.opendate}">
				                			<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
				                		</c:when>
			                		</c:choose>
		                		</c:when>
		                		<c:otherwise>
		                			<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
		                		</c:otherwise>
	                		</c:choose>
	                	</a>
	                </li>
                </c:forEach>
                </div>
            </ul>
		</div>
<script>
function msgClick(idx){
	var msg = $('#msgInput').val();
	var sender = $('#senNo').val();
	$('#senNo').val(idx);
	var notMe;
	$.ajax({
		url: "selectChat.do",
	    type: 'GET',
	    async: false,
	    data: {
		    sender_number: idx
		},
	  success : function(map) {
		if(map.length == 0){
			alert("잘못된 상대입니다! 다른 상대를 선택해주세요.");
			window.location.href = "#";
		} else if (map.detailLists != 0) {
			  $('#chatList').empty();
			  var html1='';
			  var html2='';
			  var myName = '${login.member_name}';
			  var myNo = '${login.member_number}';
			  if(map.detailLists.chatList[0].member_name != myName){
				  notMe = map.detailLists.chatList[0].member_name;
			  }else{
				  notMe = map.detailLists.chatList[0].sender_name;
			  }
			  $('#senName').text(notMe);
			  for(var i = 0; i < map.msgLists.chatList.length; i++){
			      if(map.msgLists.chatList[i].sender_number == map.senderNumber || map.msgLists.chatList[i].member_number == map.senderNumber) {
					  html1 += '<li class="active bounceInDown">';
	               	  html1 += '<a class="clearfix">';
			          html1 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">';
			          html1 += '<div class="friend-name">';	
			          if(map.msgLists.chatList[i].member_name != myName){
			          	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].member_name+'</strong></div>';
			          } else{
			        	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].sender_name+'</strong></div>';
			          }
			          html1 += '<div class="last-message text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].msg_content+'</div>';
			          html1 += '<small class="time text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].time+'</small>';
			          if(map.msgLists.chatList[i].sender_number == myNo && map.msgLists.chatList[i].opendate == null) {
			        	  html1 += '<small class="chat-alert label label-danger" style="font-family: "Spoqa Han Sans Neo";">1</small>';
			          } else{
			        	  html1 += '<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>';
			          }
			          html1 += '</a>';
			          html1 += '</li>';
				  }else{
					  html1 += '<li>';
					  if(map.msgLists.chatList[i].member_name != myName){
			          	html1 += '<a onclick="msgClick('+map.msgLists.chatList[i].member_number+')" class="clearfix">';
			          } else{
			        	html1 += '<a onclick="msgClick('+map.msgLists.chatList[i].sender_number+')" class="clearfix">';
			          }
			          html1 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">';
			          html1 += '<div class="friend-name">';	
			          if(map.msgLists.chatList[i].member_name != myName){
			          	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].member_name+'</strong></div>';
			          } else{
			        	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].sender_name+'</strong></div>';
			          }
			          html1 += '<div class="last-message text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].msg_content+'</div>';
			          html1 += '<small class="time text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].time+'</small>';
			          if(map.msgLists.chatList[i].sender_number == myNo && map.msgLists.chatList[i].opendate == null) {
			        	  html1 += '<small class="chat-alert label label-danger">1</small>';
			          } else {
			        	  html1 += '<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>';
			          }
			          html1 += '</a>';
			          html1 += '</li>';
				  }
			  }
      		  if(map.walk != '' && map.walk != null){
      			html2 += '<input type="hidden" id="walkIdx" value="'+map.walk.walk_idx+'">';
	      		html2 += '<div id="walkEventMsg" class="input-group" style="margin-bottom:5%;">';
	  			html2 += '<div class="col-sm-12">';
				html2 += '<div class="alert fade alert-simple alert-warning alert-dismissible text-left font__family-montserrat ';
				html2 += 'font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">';
				html2 += '<button type="button" style="padding:0.4rem 1.25rem;" class="close font__size-18" data-dismiss="alert">';
				html2 += '<span aria-hidden="true"><i class="fa fa-times blue-cross"></i></span>';
				html2 += '<span class="sr-only">Close</span></button>';
				html2 += '<i class="start-icon  fa fa-info-circle faa-shake animated"></i>';
				html2 += '<strong>'+map.walk.day+", <b>"+map.walk.walk_location+"</b>에서 함께 산책했어요!"+'</strong>';
				html2 += '<span class="input-group-btn" ><br>';
				html2 += '<button onclick="writeReview('+map.senderNumber+')" style="float:right; margin-top:-3.9%; padding-right:2%; padding-left:2%; padding-top:1.2%; padding-bottom:1.2%;" class="ui yellow button" type="button">후기 작성</button>';
				html2 += '</span></div></div></div>';
      		  }
			  for(var i = 0; i < map.detailLists.chatList.length; i++) {
				  if(map.detailLists.chatList[i].sender_number != map.senderNumber){ // 사용자가 발신자일때
					  html2 += '<li class="left clearfix">';
					  html2 += '<span class="chat-img pull-left">';
					  html2 += '<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">';
					  html2 += '</span>';
					  html2 += '<div class="chat-body clearfix">';
					  html2 += '<div class="header">';
					  html2 += '<strong class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
					  html2 += '<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
					  html2 += '</div>';
					  html2 += '<p>'+map.detailLists.chatList[i].msg_content+'</p>';
					  html2 += '</div>';
					  html2 += '</li>';
				  }else if(map.detailLists.chatList[i].sender_number == map.senderNumber) { // 사용자가 수신자일때
					  html2 += '<li class="right clearfix">';
					  html2 += '<span class="chat-img pull-right">';
					  html2 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
					  html2 += '</span>';
					  html2 += '<div class="chat-body clearfix">';
					  html2 += '<div class="header">';
					  html2 += '<strong class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
					  html2 += '<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
					  html2 += '</div>';
					  html2 += '<p>'+map.detailLists.chatList[i].msg_content+'</p>';
					  html2 += '</div>';
					  html2 += '</li>';
				  }
			  }
			  html2+= '<input type="hidden" id="senName" value="'+notMe+'">';
			  $('#chatDetail').empty();
			  $('#chatDetail').html(html2);
			  $('#chatList').html(html1);
			  var unreadCount = map.unread.value;
			  $('#unreadCount').empty();
  			  if(unreadCount == 0){
  				  $('#msgZone').empty();
  				  html3 += '<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>';
  				  $('#msgZone').html(html3);
  			  }else{
  				 $('#unreadCount').html(unreadCount);
  			  }
  			  window.location.href="#sendBtn";
		}
	  }
	});
}
</script>
        
    	<div class="col-md-8 bg-white ">
            <div class="chat-message" style="min-height:400px;">
                <ul class="chat" style="font-family: 'Spoqa Han Sans Neo';">
                <div id="chatDetail" style="font-family: 'Spoqa Han Sans Neo';">
               
               
<script>
function writeReview(){
	var name = $('#senName').val();
	var sender_number = $('#senNo').val();
	alert(sender_number);
	Swal.fire({
	  title: '산책을 함께 하셨나요?',
	  text: "최근 일주일 내의 산책만 후기 작성이 가능하며, 사진후기를 남겨주시면 산책포인트가 지급됩니다.",
	  icon: 'warning',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  confirmButtonText: '네! 산책했어요!',
	  cancelButtonText: '아뇨, 못했어요.'
	}).then((result) => {
	  if (result.isConfirmed) {
		  Swal.fire({
			  title: '한 줄 산책평',
			  text: name+"님의 산책평 목록에 저장됩니다!",
			  input: 'text',
			  inputAttributes: {
			    autocapitalize: 'off'
			  },
			  showCancelButton: true,
			  confirmButtonText: '작성하기',
			  cancelButtonText: '취소하기',
			  showLoaderOnConfirm: true,
			  preConfirm: (comment) => {
				  $('#walkEventMsg').empty();
				  $.ajax({
						url: "writeReview.do",
					    type: 'GET',
					    async: false,
					    data: {
					    	walk_idx: $('#walkIdx').val(),
						    sender_number: sender_number,
						    content: comment
						},
					  success : function(map) {
						  Swal.fire({
							  title: '산책 후기 작성하기',
							  text: "산책 후기 게시판으로 이동합니다.",
							  icon: 'success',
							  showCancelButton: true,
							  confirmButtonColor: '#3085d6',
							  cancelButtonColor: '#d33',
							  confirmButtonText: '후기 작성',
							  cancelButtonText: '작성 취소'
							}).then((result) => {
								
								alert("페이지 이동");
							})
					  }
				  });
			  }
		  })
	  }else{
		  Swal.fire({
			  title: '산책 매칭 실패',
			  text: '산책이 이루어지지 않은 이유를 알려주세요!',
			  input: 'text',
			  inputAttributes: {
			    autocapitalize: 'off'
			  },
			  showCancelButton: true,
			  confirmButtonText: '작성하기',
			  cancelButtonText: '취소하기',
			  showLoaderOnConfirm: true,
			  preConfirm: (comment) => {
				  alert(comment);
				  //성사되지 않은 원인에 대한 데이터 수집 필요
			  }
		  })
	  }
	})
}
</script>	
            		
                    
                    </div>                    
                </ul>
            </div>
            <div class="chat-box bg-white">
            	<div class="input-group" style="margin-bottom:5%;">
            		<input id="msgInput" style="font-family: 'Spoqa Han Sans Neo';" class="form-control border no-shadow no-rounded" placeholder="상대에게 보낼 메시지를 입력해주세요.">
            		<span class="input-group-btn">
            			<input type="hidden" name="senNo" id="senNo">
            			<button id="sendBtn" style="font-family: 'Spoqa Han Sans Neo';" class="ui blue button" type="button">전송</button>
            		</span>
            	</div>
            </div>            
		</div>        
	</div>
</div>
  
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
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
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
                <h6  style="font-family: 'Spoqa Han Sans Neo';" class="footer-title-28">Walk Service</h6>
                <ul>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="about.html">Cha Ji Hyun</a></li>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 style="font-family: 'Spoqa Han Sans Neo';" class="footer-title-28">Shopping Service</h6>
                <ul>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="contact.html">Lee Ok Seok</a></li>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 style="font-family: 'Spoqa Han Sans Neo';" class="footer-title-28">Member Service</h6>
                <ul>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="#URL">Choi Woo Jae</a></li>
                  <li><a style="font-family: 'Spoqa Han Sans Neo';" href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
        <div class="container">
          <p style="font-family: 'Spoqa Han Sans Neo';" class="copy-footer-28 text-center"> &copy; 2021 With My Pet. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>
  </section>
 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="../assets/js/theme-change.js"></script>
  <script src="../assets/js/owl.carousel.js"></script>
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
      // 마이페이지 > 해당 대상과의 메세지로 바로 이동
      var DirectNo = '${map.directMember}';
      if(DirectNo != null && DirectNo != ''){
      	Direct(DirectNo);
      }
      function Direct(DirectNo){
   		 var msg = $('#msgInput').val();
   		 var sender = $('#senNo').val();
   		 $('#senNo').val(DirectNo);
   		 var notMe;
    	  $.ajax({
    			url: "selectChat.do",
    		    type: 'GET',
    		    async: false,
    		    data: {
    			    sender_number: DirectNo
    			},
    			dataType:'json',
    		  success : function(map) {
    			  $('#chatList').empty();
    			  var html1='';
  				  var html2='';
  				  var myName = '${login.member_name}';
				  var myNo = '${login.member_number}';

    			if(map.length == 0){ // 없는 상대이면
    				alert("잘못된 상대입니다! 다른 상대를 선택해주세요.");
    				window.location.href = "#";
    			} else if (map.msgLists.chatList == '' && map.detailLists.chatList == ''){ // 아무와도 대화 한 적이 없으면
	  				 notMe = map.senderName;
	  				 $('#senName').text(notMe);
	  				// 가상 메시지
	  				  html1 += '<center>';
			          html1 += '<div class="last-message text-muted" style="font-family: "Spoqa Han Sans Neo"; ">대화 상대 없음</div>';
			          html1 += '</center>';
	  				  html2 += '<li class="right clearfix">';
					  html2 += '<span class="chat-img pull-right">';
					  html2 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
					  html2 += '</span>';
					  html2 += '<div class="chat-body clearfix">';
					  html2 += '<div class="header">';
					  html2 += '<strong class="primary-font">'+myName+'</strong>\</div>';
					  html2 += '<p>아직 <b>'+map.senderName+'</b>님과 나눈 대화가 없네요! 먼저 메시지를 보내보세요.</p></div></li>';
    				  html2 += '<input type="hidden" id="senName" value="'+map.senderName+'">';
    				  $('#chatDetail').empty();
    				  $('#chatDetail').html(html2);
    				  $('#chatList').html(html1);
    				  var unreadCount = map.unread.value;
    				  $('#unreadCount').empty();
    	  			  if(unreadCount == 0){
    	  				  $('#msgZone').empty();
    	  				  html3 += '<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>';
    	  				  $('#msgZone').html(html3);
    	  			  }else{
    	  				 $('#unreadCount').html(unreadCount);
    	  			  }
    	  			  window.location.href="#sendBtn";
    				  
    			} else if (map.detailLists != 0) { // 대화 한 적 있으면
    				  if(map.detailLists.chatList[0].member_name != myName){
    					  notMe = map.detailLists.chatList[0].member_name;
    				  }else{
    					  notMe = map.detailLists.chatList[0].sender_name;
    				  }
    				  $('#senName').text(notMe);
    				  
    				  for(var i = 0; i < map.msgLists.chatList.length; i++){
    				      if(map.msgLists.chatList[i].sender_number == map.senderNumber || map.msgLists.chatList[i].member_number == map.senderNumber) {
    						  html1 += '<li class="active bounceInDown">';
    		               	  html1 += '<a class="clearfix">';
    				          html1 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">';
    				          html1 += '<div class="friend-name">';	
    				          if(map.msgLists.chatList[i].member_name != myName){
    				          	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].member_name+'</strong></div>';
    				          } else{
    				        	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].sender_name+'</strong></div>';
    				          }
    				          html1 += '<div class="last-message text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].msg_content+'</div>';
    				          html1 += '<small class="time text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].time+'</small>';
    				          if(map.msgLists.chatList[i].sender_number == myNo && map.msgLists.chatList[i].opendate == null) {
    				        	  html1 += '<small class="chat-alert label label-danger" style="font-family: "Spoqa Han Sans Neo";">1</small>';
    				          } else{
    				        	  html1 += '<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>';
    				          }
    				          html1 += '</a>';
    				          html1 += '</li>';
    					  }else{
    						  html1 += '<li>';
    						  if(map.msgLists.chatList[i].member_name != myName){
    				          	html1 += '<a onclick="msgClick('+map.msgLists.chatList[i].member_number+')" class="clearfix">';
    				          } else{
    				        	html1 += '<a onclick="msgClick('+map.msgLists.chatList[i].sender_number+')" class="clearfix">';
    				          }
    				          html1 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="" class="img-circle">';
    				          html1 += '<div class="friend-name">';	
    				          if(map.msgLists.chatList[i].member_name != myName){
    				          	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].member_name+'</strong></div>';
    				          } else{
    				        	html1 += '<strong style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].sender_name+'</strong></div>';
    				          }
    				          html1 += '<div class="last-message text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].msg_content+'</div>';
    				          html1 += '<small class="time text-muted" style="font-family: "Spoqa Han Sans Neo";">'+map.msgLists.chatList[i].time+'</small>';
    				          if(map.msgLists.chatList[i].sender_number == myNo && map.msgLists.chatList[i].opendate == null) {
    				        	  html1 += '<small class="chat-alert label label-danger">1</small>';
    				          } else {
    				        	  html1 += '<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>';
    				          }
    				          html1 += '</a>';
    				          html1 += '</li>';
    					  }
    				  }
    	      		  if(map.walk != '' && map.walk != null){
    	      			html2 += '<input type="hidden" id="walkIdx" value="'+map.walk.walk_idx+'">';
    		      		html2 += '<div id="walkEventMsg" class="input-group" style="margin-bottom:5%;">';
    		  			html2 += '<div class="col-sm-12">';
    					html2 += '<div class="alert fade alert-simple alert-warning alert-dismissible text-left font__family-montserrat ';
    					html2 += 'font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">';
    					html2 += '<button type="button" style="padding:0.4rem 1.25rem;" class="close font__size-18" data-dismiss="alert">';
    					html2 += '<span aria-hidden="true"><i class="fa fa-times blue-cross"></i></span>';
    					html2 += '<span class="sr-only">Close</span></button>';
    					html2 += '<i class="start-icon  fa fa-info-circle faa-shake animated"></i>';
    					html2 += '<strong>'+map.walk.day+", <b>"+map.walk.walk_location+"</b>에서 함께 산책했어요!"+'</strong>';
    					html2 += '<span class="input-group-btn" ><br>';
    					html2 += '<button onclick="writeReview('+map.senderNumber+')" style="float:right; margin-top:-3.9%; padding-right:2%; padding-left:2%; padding-top:1.2%; padding-bottom:1.2%;" class="ui yellow button" type="button">후기 작성</button>';
    					html2 += '</span></div></div></div>';
    	      		  }
    				  for(var i = 0; i < map.detailLists.chatList.length; i++) {
    					  if(map.detailLists.chatList[i].sender_number != map.senderNumber){ // 사용자가 발신자일때
    						  html2 += '<li class="left clearfix">';
    						  html2 += '<span class="chat-img pull-left">';
    						  html2 += '<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">';
    						  html2 += '</span>';
    						  html2 += '<div class="chat-body clearfix">';
    						  html2 += '<div class="header">';
    						  html2 += '<strong class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
    						  html2 += '<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
    						  html2 += '</div>';
    						  html2 += '<p>'+map.detailLists.chatList[i].msg_content+'</p>';
    						  html2 += '</div>';
    						  html2 += '</li>';
    					  }else if(map.detailLists.chatList[i].sender_number == map.senderNumber) { // 사용자가 수신자일때
    						  html2 += '<li class="right clearfix">';
    						  html2 += '<span class="chat-img pull-right">';
    						  html2 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
    						  html2 += '</span>';
    						  html2 += '<div class="chat-body clearfix">';
    						  html2 += '<div class="header">';
    						  html2 += '<strong class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
    						  html2 += '<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
    						  html2 += '</div>';
    						  html2 += '<p>'+map.detailLists.chatList[i].msg_content+'</p>';
    						  html2 += '</div>';
    						  html2 += '</li>';
    					  }
    				  }
    				  html2+= '<input type="hidden" id="senName" value="'+notMe+'">';
    				  $('#chatDetail').empty();
    				  $('#chatDetail').html(html2);
    				  $('#chatList').html(html1);
    				  var unreadCount = map.unread.value;
    				  $('#unreadCount').empty();
    	  			  if(unreadCount == 0){
    	  				  $('#msgZone').empty();
    	  				  html3 += '<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>';
    	  				  $('#msgZone').html(html3);
    	  			  }else{
    	  				 $('#unreadCount').html(unreadCount);
    	  			  }
    	  			  window.location.href="#sendBtn";
    			}
    		  }
    		});
	  }
    
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
    });
});
</script>
<!-- //script for tesimonials carousel slider -->
  <!-- stats number counter-->
  <script src="../assets/js/jquery.waypoints.min.js"></script>
  <script src="../assets/js/jquery.countup.js"></script>
  <script>
    $('.counter').countUp();
  </script>
<script src="../assets/js/jquery.magnific-popup.min.js"></script>
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
  //send 버튼 클릭시 (메시지 insert)
  $('#sendBtn').on('click', function(event){
	  var msg = $('#msgInput').val();
	  var sender = $('#senNo').val();
	  var notMe;
	  $.ajax({
		  url: "sendChat.do",
		    type: 'GET',
		    async: false,
		    data: {
			    sender_number: sender,
			    msg_content: msg
			},
		  success : function(map) {
			  var myName = '${login.member_name}';
			  if(map.detailLists.chatList[0].member_name != myName){
				  notMe = map.detailLists.chatList[0].member_name;
			  }else{
				  notMe = map.detailLists.chatList[0].sender_name;
			  }
			  console.log("reply.js:socket>>");
			  if(socket) {
				  var socketMsg = "msg,"+myName+","+notMe;
				  console.log("ssssssmsg>>"+socketMsg);
				  socket.send(socketMsg);
			  }
			  var html2 = '';
			  
			  html2 += '<div class="input-group" style="margin-bottom:5%;">';
			  html2 += '<input id="msgInput" style="font-family: "Spoqa Han Sans Neo";" class="form-control border no-shadow no-rounded" placeholder="상대에게 보낼 메시지를 입력해주세요.">';
			  html2 += '<span class="input-group-btn">';
      		  html2 += '<button id="sendReview" onclick="sendReview('+map.senderNumber+')" style="font-family: "Spoqa Han Sans Neo";" class="ui blue button" type="button">산책 후기 작성</button>';
      		  html2 += '<button class="ui blue button" style="margin:auto; font-size:1.0rem; font-family: "Spoqa Han Sans Neo";">팔로우</button></span></div>';

			  for(var i = 0; i < map.detailLists.chatList.length; i++) {
				  if(map.detailLists.chatList[i].sender_number != map.senderNumber){ // 사용자가 발신자일때
					  html2 += '<li class="left clearfix">';
					  html2 += '<span class="chat-img pull-left">';
					  html2 += '<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">';
					  html2 += '</span>';
					  html2 += '<div class="chat-body clearfix">';
					  html2 += '<div class="header">';
					  html2 += '<strong style="font-family: "Spoqa Han Sans Neo";" class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
					  html2 += '<small style="font-family: "Spoqa Han Sans Neo";" class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
					  html2 += '</div>';
					  html2 += '<p style="font-family: "Spoqa Han Sans Neo";">'+map.detailLists.chatList[i].msg_content+'</p>';
					  html2 += '</div>';
					  html2 += '</li>';
				  }else if(map.detailLists.chatList[i].sender_number == map.senderNumber) { // 사용자가 수신자일때
					  html2 += '<li class="right clearfix">';
					  html2 += '<span class="chat-img pull-right">';
					  html2 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
					  html2 += '</span>';
					  html2 += '<div class="chat-body clearfix">';
					  html2 += '<div class="header">';
					  html2 += '<strong style="font-family: "Spoqa Han Sans Neo";" class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
					  html2 += '<small style="font-family: "Spoqa Han Sans Neo";" class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
					  html2 += '</div>';
					  html2 += '<p style="font-family: "Spoqa Han Sans Neo";">'+map.detailLists.chatList[i].msg_content+'</p>';
					  html2 += '</div>';
					  html2 += '</li>';
				  }
			  }
			  html2+= '<input type="hidden" id="senName" value="'+notMe+'">';
			  $('#chatDetail').empty();
			  $('#chatDetail').html(html2);
			  var unreadCount = map.unread.value;
			  $('#unreadCount').empty();
  			  if(unreadCount == 0){
  				  $('#msgZone').empty();
  				  html3='<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>';
  				  $('#msgZone').html(html3);
  			  }else{
  				 $('#unreadCount').html(unreadCount);
  			  }
		  }
	  });
  });
  
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
    
  // 웹소켓 연결
  var sender = $('#senNo').val();
  var socket = null;
  $(document).ready(function(){ connectWS(); })
  function connectWS(){
  	var url = "ws://localhost:8080/replyEcho";
  	var ws = new WebSocket(url);
  	socket = ws;
  	// 커넥션 연결
  	ws.onopen = function(event){
  		console.log('info : connection opened'+event);
  	 // 메세지 왔을때 (알림 + 목록갱신)
  	 ws.onmessage = function (event){
  		toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                timeOut: 4000
         };
         toastr.success('메시지 알림', event.data+' 님이 메시지를 보냈습니다!');
         refresh(event);
  	 };
  	};
  	ws.onclose = function(event) { 
  		console.log('info : connection closed.');
  		setTimeout(function(){ 
  			connectWS();
  		}, 1000);
  	};
  	ws.onerror = function(event) { console.log('error : '+event); };
  };
  function refresh(event){
	  var senderNo = $('#senNo').val();
	  var senderName = event.data;
	  var senName = $('#senName').val();
	  if(senderName == senName){
		  $.ajax({
	  		  url: "refreshChat.do",
	  		    type: 'GET',
	  		    async: false,
	  		    data: {
	  			    sender_number: senderNo
	  			},
	  		  success : function(map) {
 				if(map.length == 0){
 					alert("잘못된 상대입니다! 다른 상대를 선택해주세요.");
 					window.location.href = "#";
 				} else if (map.detailLists != 0) {
 					  var html2='';
 					  var myName = '${login.member_name}';
 					  var myNo = '${login.member_number}';
 					  if(map.detailLists.chatList[0].member_name != myName){
 						  notMe = map.detailLists.chatList[0].member_name;
 					  }else{
 						  notMe = map.detailLists.chatList[0].sender_name;
 					  }
 					  $('#senName').text(notMe);
 					  html2 += '<button class="ui basic button" style="margin:auto; background: rgba(0, 0, 0, 0.8); font-size:1.0rem; font-family: "Spoqa Han Sans Neo";">'+notMe+' / 팔로잉 </button>';
 					  html2 += '<button class="ui basic button" style="margin:auto; background: #FFB446; font-size:1.0rem; font-family: "Spoqa Han Sans Neo";">'+notMe+' / 팔로잉 </button>';
 					  for(var i = 0; i < map.detailLists.chatList.length; i++) {
 						  if(map.detailLists.chatList[i].sender_number != map.senderNumber){ // 사용자가 발신자일때
 							  html2 += '<li class="left clearfix">';
 							  html2 += '<span class="chat-img pull-left">';
 							  html2 += '<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">';
 							  html2 += '</span>';
 							  html2 += '<div class="chat-body clearfix">';
 							  html2 += '<div class="header">';
 							  html2 += '<strong style="font-family: "Spoqa Han Sans Neo";" class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
 							  html2 += '<small style="font-family: "Spoqa Han Sans Neo";" class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
 							  html2 += '</div>';
 							  html2 += '<p style="font-family: "Spoqa Han Sans Neo";">'+map.detailLists.chatList[i].msg_content+'</p>';
 							  html2 += '</div>';
 							  html2 += '</li>';
 						  }else if(map.detailLists.chatList[i].sender_number == map.senderNumber) { // 사용자가 수신자일때
 							  html2 += '<li class="right clearfix">';
 							  html2 += '<span class="chat-img pull-right">';
 							  html2 += '<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">';
 							  html2 += '</span>';
 							  html2 += '<div class="chat-body clearfix">';
 							  html2 += '<div class="header">';
 							  html2 += '<strong style="font-family: "Spoqa Han Sans Neo";" class="primary-font">'+map.detailLists.chatList[i].member_name+'</strong>';
 							  html2 += '<small  style="font-family: "Spoqa Han Sans Neo";" class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+map.detailLists.chatList[i].time+'</small>';
 							  html2 += '</div>';
 							  html2 += '<p style="font-family: "Spoqa Han Sans Neo";">'+map.detailLists.chatList[i].msg_content+'</p>';
 							  html2 += '</div>';
 							  html2 += '</li>';
 						  }
 					  }
 					  html2+= '<input type="hidden" id="senName" value="'+notMe+'">';
 					  $('#chatDetail').empty();
 					  $('#chatDetail').html(html2);
 					  var unreadCount = map.unread.value;
 					  $('#unreadCount').empty();
 		  			  if(unreadCount == 0){
 		  				  $('#msgZone').empty();
 		  				  html3='<a href="/msg/chat.do"><img src="../assets/images/icon/message.png"></a>';
 		  				  $('#msgZone').html(html3);
 		  			  }else{
 		  				 $('#unreadCount').html(unreadCount);
 		  			  }
 		  			  alert($('#senName').val());
 		  			  window.location.href="#sendBtn"; 
	  			}
	  		  }
	  	  });
  	 }
  }
  </script>
      <script src="../assets/js/bootstrap.min.js"></script>
      <script src="../assets/plugins/sweetalert2/dist/sweetalert2.min.js"></script>
      <script src="//cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
	  <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	</body>
</html>