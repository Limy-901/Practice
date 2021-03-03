<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.Hashtable"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
​
​
<!doctype html>
<html lang="ko">
​
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 함께 산책해요</title>
   <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/icon/footprint16.png">
  <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/list.css">
  <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="../assets/css/walkform.css">
  <link rel="stylesheet" href="../assets/css/walkform.min.css">
  <link rel="stylesheet" href="../assets/css/button/input.css">
  <link rel="stylesheet" href="../assets/css/button/input.min.css">
  <link rel="stylesheet" href="../assets/css/button/button.css">
  <link rel="stylesheet" href="../assets/css/button/button.min.css">
  <link rel="stylesheet" href="../assets/css/button/dropdown.css">
  <link rel="stylesheet" href="../assets/css/button/dropdown.min.css">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../assets/js/button/package.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/button/dropdown.min.js"></script>
	<script src="../assets/js/button/dropdown.js"></script>
	<script src="../assets/js/button/index.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>



  
  
<!--header-->
<header id="site-header" class="fixed-top" >
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
          </button>

          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active" style="font-family: 'Spoqa Han Sans Neo';">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item dropdown" style="font-family: 'Spoqa Han Sans Neo';">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';" >
                      	<a class="dropdown-item" href="walk/list.do" >산책모집 </a>
                          <a class="dropdown-item" href="walk/board.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown" style="font-family: 'Spoqa Han Sans Neo';">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="blog.html">쇼핑하기</a>
                          <a class="dropdown-item" href="blog.html">구매후기</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown" style="font-family: 'Spoqa Han Sans Neo';">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="blog.html">공지사항</a>
                          <a class="dropdown-item" href="blog-single.html">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item" style="font-family: 'Spoqa Han Sans Neo';">
                      <a class="nav-link" href="gallery.html" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
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
<section class="w3l-about-breadcrumb text-center">
  <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
      <div class="container py-2">
          <h2 class="title" style="font-family: 'Spoqa Han Sans Neo';">산책 모임</h2>
          <ul class="breadcrumbs-custom-path mt-2">
              <li><a href="#url" style="font-family: 'Spoqa Han Sans Neo';">Home</a></li>
              <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true" style="font-family: 'Spoqa Han Sans Neo';"></span> About  </li>
          </ul>
      </div>
  </div>
</section><br><br>

<!-- 산책개설버튼 -->
<div style="margin:auto; display:flex; ">
	 <a class="button" href="../walk/post.do"style="font-size:30px;margin:auto; padding:1.5%;display:flex; position:relative;"><b>&nbsp;&nbsp;&nbsp;&nbsp;직접 만들기 🐕&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
</div><br><br><br>

<!-- 검색창 -->
<center>
    <div class="ui action input" style="width:40%;">
	  <input type="text" id="searchKeyword" placeholder="검색어를 입력하세요.">
	  <select id="searchType" class="ui compact selection dropdown">
	    <option selected="" value="all">전체</option>
	    <option value="location">지역</option>
	    <option value="subject">제목</option>
	    <option value="content">내용</option>
	  </select>
	  <div class="ui teal button" onclick="search()">검색</div>
	</div>
</center><br><br><br>

<script>
function search(){
	var keyword = $("#searchKeyword").val();
	var selected = $("#searchType").val();
	alert(keyword+selected);
	$.ajax({
		   url: "search.do", 
		   type: "GET",
		   data: {
			   keyword:keyword,
			   searchType:selected
		   },
		   success: function(responseData){
			   alert(responseData.list);
			   if(!responseData) return false;
			   var html = '';
			   $('#searchReset').empty();
			   alert(responseData.list.length);
			   for(var i=0; i<responseData.list.length;i++){
		    	   html += "<div class='col-lg-4 col-sm-6 grids-feature'style='margin-left:-5%; display:relative;'>";
		    	   html += "<center><div class='area-box'><div class='col-md-4'>";
	    		   html += "<img style='margin:auto;'src='../assets/images/g1.jpg' class='img-fluid radius-image mt-1' alt='blog-post-image'>";
	    		   html += "</div>";
    			   html += "<div class='col-md-8 align-self'>";
    			   html += "<P style='font-size:1rem;'>${item.day}, ${item.time}</P>";
    			   html += "<b><p>"+responseData.list[i].walk_location+"</p></b>";
   				   html += "<h4><a href='#feature' class='title-head'>"+responseData.list[i].walk_subject+"</a></h4>";
   				   html += "<p style='font-size:16px;'>"+responseData.list[i].walk_writer+"</p>";
   				   html += "<p>"+responseData.list[i].walk_content+"</p>";
				   html += "<a href='../walk/blog.do?idx="+responseData.list[i].walk_idx+"' class='read'>자세히 보기>></a>";
				   html += "</div></div></center></div>";
			        
			   }
			   $('#searchReset').html(html);
		   }
	});
}
</script>
<c:if test="${empty list}">
	<p>데이터가 없습니다.</p>
</c:if>
	
<div id="searchReset" style="align:center;">
	<c:forEach items="${list.list}" var="item" varStatus="status">
	<div class="acard-media">
	<!-- 마우스 오버시 등장하는 댓글회원 -->
	    <div class="acard-media-object-container">
	      <div class="acard-media-object" style="background-image: url(../assets/images/g1.jpg);"></div>
	      <c:if test="${empty list.cmtList[status.index]}"> 
	      	<span class="acard-media-object-tag subtle">기다리고 있어요!</span>
	      </c:if>
	      <ul class="acard-media-object-social-list">
	        <li><!-- 댓글 회원 사진 -->
	          <img src="https://s10.postimg.cc/3rjjbzcvd/profile_f.jpg" class="">
	        </li>
	        <li><!-- 댓글 회원 사진 -->
	          <img src="https://s16.postimg.cc/b0j0djh79/profile_0_f.jpg" class="">
	        </li>
	      </ul>
	    </div>
	    <!-- 산책 정보 -->
	    <div class="acard-media-body" id="acard${item.walk_idx}">
	      <div class="acard-media-body-top">
	        <span class="asubtle">${item.day}, ${item.time} &nbsp;&nbsp;/&nbsp;&nbsp; ${item.walk_writer}</span>
	        <div class="acard-media-body-top-icons au-float-right">
	          <a href="javascript:sendLink()"><img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_small.png" /></a>
	          &nbsp;&nbsp;&nbsp;
	          <button onclick="location.href='blog.do?idx=${item.walk_idx}'" class="massive yellow ui button" 
		      style="position:relative;margin-top:38%;font-size:0.95rem;font-family: 'Spoqa Han Sans Neo';">더 알아보기</button>
	        </div>
	      </div>
	      <span class="acard-media-body-heading" style="font-size:1.3rem; color:#FFB446;" >${item.walk_subject}</span>
	      <p style="margin-top:3%;">${item.walk_content}</p>
	      <div class="acard-media-body-supporting-bottom">
	        <span class="acard-media-body-supporting-bottom-text asubtle au-float-right"></span>
	        <div>
		        <span class="acard-media-body-supporting-bottom-text asubtle" style="margin-bottom:16px;">
			        <a class="ui teal label"># ${item.walk_location}</a>
			        <a class="ui yellow label"># ${item.walk_type}</a>
		        </span>
	      	</div>
	      </div>
	      <div class="acard-media-body-supporting-bottom acard-media-body-supporting-bottom-reveal">
	      </div>
	    </div>
  </div>
<script type="text/javascript">
// 카카오 공유하기
  Kakao.init('63be5e5f8d770d2796e1e45e8fcfebbd');
  function sendLink() {
    Kakao.Link.sendDefault({
      objectType: 'feed',
      content: {
	        title: '함께 산책해요 :: With My Pet',
	        description: '우리 강아지의 산책 친구',
	        imageUrl: 'https://postfiles.pstatic.net/MjAyMTAzMDJfMTY1/MDAxNjE0NjgxMzk0MjY2.iMWrCceWl_Bat-8WehW_MPBWhiGWa_Zt3wpLYBrYrPgg.XAMxlGBwAYIdppCdX2H5CxObPeC-aYmLTvcYNXDLGAog.JPEG.misty901/Corg.jpg?type=w773',
	        link: {
	    	  mobileWebUrl: 'http://localhost:8080/walk/blog.do?idx='+${item.walk_idx},
	          webUrl: 'http://localhost:8080/walk/blog.do?idx='+${item.walk_idx}
	        }
      },
    })
  }
</script>
	</c:forEach>
</div>
  
  <!-- 페이지네이션 -->
  <div style="text-align:center;"><br/><br/><br/>
    <c:forEach begin="1" end="${list.totalPageCount}" var="i">
		<a href="list.do?cp=${i}">
			<c:choose>
			   <c:when test="${i==list.cp}">
			   		<strong>${i}</strong>
			   </c:when>
				<c:otherwise>
					${i}
				</c:otherwise>
			</c:choose>
		</a>&nbsp;
	</c:forEach><br/><br/>
    <label>( TOTAL : ${list.totalCount} )</label><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </div><br/><br/>
    

<!-- 최하단 footer -->
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