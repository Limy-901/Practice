<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 관리자 :: With My Pet</title>
<link href="../assets/css/admin/style.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link href="../assets/plugins/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">


</head>
<body>
    <!-- 기본 틀 -->
    <div id="main-wrapper" style="height:100%; display:relative; opacity:100;">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header" style="background-color:#FFD687;">
            <div class="brand-logo" style="display:flex; margin:auto;">
                <a href="#" style="display:flex; margin:auto;">
                    <span class="brand-title" style="display:flex; margin:auto; margin-bottom:10%;">
                        <img style="display:flex; margin:auto; width:80%;"src="../assets/images/logos/logo-grey.png" alt=""><br/><br/>
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header" style="background-color:#FFD687; margin-bottom: -1%;">    
            <div class="header-content clearfix">
                
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <!-- 검색 -->
                <div class="header-left">
                    <div class="input-group icons" style="width:200%;">
                        <input id="mainSearchKeyword" type="text" class="form-control" placeholder="검색어를 입력하세요." aria-label="Search Dashboard">
                        <div class="drop-down animated flipInX d-md-none">
                           <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1">
                        	<a onclick="mainSearchCheck()"><i class="mdi mdi-magnify"></i></a>
                        </span>
                    </div>                    
                </div>
                <div class="header-right">
                    <ul class="clearfix">
                    	<!-- 새 문의글  -->
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="" style="font-family: 'Spoqa Han Sans Neo';">새 문의글</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span style="font-family: 'Spoqa Han Sans Neo';"class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Saiful Islam</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Adam Smith</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Barak Obama</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Hilari Clinton</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                                    <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- 확인 필요 사항 -->
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">5</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">확인사항</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">산책 포인트 지급</h6>
                                                    <span class="notification-text">Within next 5 days</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">배송 현황 변경</h6>
                                                    <span class="notification-text">One hour ago</span> 
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- 페이지 이동 네비 바 -->
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>관리페이지</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="../">메인화면</a></li>
                                        <li><a href="../walk/list.do">산책</a></li>
                                        <li><a href="../product">쇼핑</a></li>
                                        <li><a href="../board/list.do">커뮤니티</a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar" style="background-color:#FFD687;">           
            <div class="nk-nav-scroll" style="background-color:#FFD687;">
                <ul class="metismenu" id="menu" style="background-color:#FFD687;">
                    <li class="nav-label"></li>
                    <li>
                        <a href="#" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text"></span>
                        </a>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                    	<a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">회 원</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="memberList.do"style="font-family: 'Spoqa Han Sans Neo';">회원 목록</a></li>
                        	<li><a href="memberMessage.do"style="font-family: 'Spoqa Han Sans Neo';">회원에게 메세지 전송</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                    	<a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산 책</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="nextWalk.do"style="font-family: 'Spoqa Han Sans Neo';">산책 예정 현황</a></li>
                        	<li><a href="previousWalk.do"style="font-family: 'Spoqa Han Sans Neo';">지난 산책 현황</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm" style="z-index:999;">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">상 품</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="registerProduct.do"style="font-family: 'Spoqa Han Sans Neo';">상품 등록</a></li>
                            <li><a href="productQ.do"style="font-family: 'Spoqa Han Sans Neo';">문의 답변</a></li>
                            <li><a href="productA.do"style="font-family: 'Spoqa Han Sans Neo';">지난 문의 내용</a></li>
                            <li><a href="orderStatus.do"style="font-family: 'Spoqa Han Sans Neo';">주문 현황</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">게시글</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="recentBoard.do"style="font-family: 'Spoqa Han Sans Neo';">최근 게시글</a></li>
                            <li><a href="reportedPost.do"style="font-family: 'Spoqa Han Sans Neo';">신고글 목록</a></li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="walkStatistic.do" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산책 통계</span>
                        </a>
                    </li>
                    <li>
                        <a href="salesStatistic.do" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">매출 통계</span>
                        </a>
                    </li>
                    <li>
                        <a href="postNotice" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">공지사항 작성</span>
                        </a>
                    </li>
                    
                    
                </ul>
            </div><br/>
        </div>

	<div class="row" style="width:100%; margin-left:0.5%;">
	    <div class="col-lg-12">
	        <div class="card"style="width:75%;margin-left:17%;">
	            <div class="card-body" style="width:100%;">
	                <div id="listsSize"><h4 class="card-title">답변을 기다리는 글 : ${fn:length(lists)}</h4></div><br/>
	                <div id="listsPanel" class="bootstrap-media">
	                    <ul class="list-unstyled">
	                    
	                    	<!-- 리스팅 -->
	                    	<c:if test="${empty lists}">
	                    		<li class="media">
		                            <div class="media-body">
		                                <h5 class="mt-0 mb-1" style="width:60%;">모든 문의 글에 답변을 완료했습니다.</h5>
		                            </div>
		                        </li>
	                    	</c:if>
	                    	
	                    	<c:forEach items="${lists}" var="list">
		                        <li class="media">
		                            <img class="mr-3" src="../assets/images/admin/avatar/1.jpg" alt="Generic placeholder image">
		                            <div class="media-body">
		                                <h5 class="mt-0 mb-1" style="width:60%;">작성자 : ${list.post_writer} / 제목 : ${list.post_subject}</h5>
		                                ${list.content}
			                            <div id="collapseOne" class="collapse show" data-parent="#accordion-one">
			                                <div class="card-body">
			                                	<div class="basic-form">
			                                	
								                        <div class="form-group">
								                            <label>답변내용 : </label>
								                            <textarea id="answerText${list.post_idx}"style="width:96%;"class="form-control h-150px" rows="6" id="comment"></textarea><br/>
								                            <button onclick="checkBoard(${list.post_idx})" style="margin-right:5%;float:right;" class="btn mb-1 btn-info">작성완료
								                            	<span class="btn-icon-right"><i class="fa fa-check"></i></span>
								                            </button>
								                        </div>
								                       
								                </div>
			                                </div>
			                            </div>
		                            </div>
		                        </li>
	                        </c:forEach>

	                    </ul>
	                </div>
	                
<script>
function checkBoard(idx){
	var text = document.getElementById("answerText"+idx).value;
	Swal.fire({
		  title: '답변을 등록하시겠습니까?',
		  text: "적절한 답변인지 한번 더 확인하세요!",
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: '작성',
		  cancelButtonText: '취소'
		}).then((result) => {
			
		  if (result.value) {
			  $.ajax({
				  url: "answer.do",
				  type: 'GET',
				  data: { content: text,
					  	  board_idx: idx },
				  success : function(data){
					  Swal.fire({
		                    icon: 'success',
		                    title: '답변 작성을 완료했습니다!',
		                    text: '지난 답변 확인은 "지난 문의 확인" 에서 볼 수 있습니다.',
		              });
					  $('#listsPanel').empty();
					  $('#listsSize').empty();
					  var html='';
					  if(data.length == 0){
						  html += '<ul class="list-unstyled"><li class="media"><div class="media-body">';
						  html += '<h5 class="mt-0 mb-1" style="width:60%;">모든 문의 글에 답변을 완료했습니다.</h5></div></li></ul>';
					  }else{
						  for(var i=0;i<data.length;i++) {
							  html += '<ul class="list-unstyled"><li class="media">';
							  html += '<img class="mr-3" src="../assets/images/admin/avatar/1.jpg" alt="Generic placeholder image">';
							  html += '<div class="media-body">';
							  html += '<h5 class="mt-0 mb-1" style="width:60%;">작성자 : '+data[i].post_writer+' / 제목 : '+data[i].post_subject+'</h5>'+data[i].content+'';
							  html += '<div id="collapseOne" class="collapse show" data-parent="#accordion-one">';
							  html += '<div class="card-body" style="width:80%;"><div class="basic-form"><div class="form-group"><label>답변내용 : </label>';
							  html += '<textarea id="answerText'+data[i].post_idx+'"style="width:96%;"class="form-control h-150px" rows="6" id="comment"></textarea><br/>';
							  html += '<button onclick="checkBoard('+data[i].post_idx+')" style="margin-right:5%;float:right;" class="btn mb-1 btn-info">작성완료';
							  html += '<span class="btn-icon-right"><i class="fa fa-check"></i></span>';
							  html += '</button></div></div></div></div></div></li></ul>';
						     }
						  $('#listsPanel').html(html);
						  $('#listsSize').html('<h4 class="card-title">답변을 기다리는 글 : '+data.length+'</h4>');
				     }
			     }
			  });
		  }
	})
}
</script>
	            </div>
	        </div>
	    </div>
	</div>
</div>
<section class="w3l-footer" style="background-color:black; display:absolute;z-index:100;">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
            <ul>
              <li>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
                <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Walk Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="about.html">Cha Ji Hyun</a></li>
                  <li><a href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Shopping Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="contact.html">Lee Ok Seok</a></li>
                  <li><a href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Member Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo';">
                  <li><a href="#URL">Choi Woo Jae</a></li>
                  <li><a href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </footer>
  </section>
  
    <!--**********************************
        Scripts
    ***********************************-->
    <script src="../assets/plugins/common/common.min.js"></script>
    <script src="../assets/js/admin/custom.min.js"></script>
    <script src="../assets/js/admin/settings.js"></script>
    <script src="../assets/js/admin/gleek.js"></script>
    <script src="../assets/js/admin/styleSwitcher.js"></script>
    <script src="../assets/plugins/sweetalert2/dist/sweetalert2.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</body>
</html>