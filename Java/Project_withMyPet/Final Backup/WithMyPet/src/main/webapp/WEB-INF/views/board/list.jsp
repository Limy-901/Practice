<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 게시판 </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/style-liberty.css">
    <link rel="stylesheet" href="../assets/css/board.css">

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
                  <li class="nav-item active">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
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
                      	<a class="dropdown-item" href="blog.html">쇼핑하기</a>
                          <a class="dropdown-item" href="blog.html">구매후기</a>
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

<!--게시판 시작-->

<table class="bbs-table" table style="margin-left: auto; margin-right: auto;">
<!--  게시판 목록 머리말 -->
<div class="title">

<h3>게시판 </h3>
산책에 관련된 내용을 업로드하는 게시판입니다.
</div>
공지사항
일상

<tr id = "t1">

    <td style="width: 60px;">NO</td>
    <td style="width: 260px;">제목</td>
    <td style="width: 60px;">글쓴이</td>
    <td style="width: 60px;">조회수</td>
    <td style="width: 60px;">좋아요</td>  
    <td style="width: 84px;">작성일</td>
    <c:if test="${empty listResult}">
	<tr align="center" noshade>
	   <td colspan="5">등록된 글이 존재하지 않습니다.</td>
	</tr>
</c:if>
<c:forEach items="${listResult.list}" var="board">
	<TR align='center' noshade>
		<TD>${board.post_idx}</TD>


	    <TD>
	      <a href="content.do?post_idx=${board.post_idx}">
		    ${board.post_subject}
		  </a>
		</TD>
		
		<TD>${board.post_writer}</TD>
		<TD>${board.post_count}</TD>
		<TD>${board.post_like}</TD>
		<TD>${board.post_date}</TD>
</TR>
</c:forEach>
    
  
 
</tr>



<!-- 메뉴바 시작-->
<div class="menubar">

<br>
<br>
<div class="boardtitle">
<c:choose>
<c:when test="${board_idx eq '1'}"><h3>게시판1 </h3></c:when>
<c:when test="${board_idx eq '2'}"><h3>게시판2 </h3></c:when>
<c:otherwise><h3>게시판3 </h3></c:otherwise>
</c:choose>
	
   <c:choose>
      <c:when test="${empty loginPassUser.ct_id}">
         회원만 글쓰기가 가능합니다.
      </c:when>
   <c:otherwise>
      <a href='../qna/qna.do?m=write&ct_id=${loginPassUser.ct_id}'>전체문의 게시판</a><br/>
   </c:otherwise>
  </c:choose>
 </div> 
 
	<ul class="sidemenu">
	  <li><a href="list.do?board_idx=1">공지사항</a></li>
	  <li><a href="list.do?board_idx=2">일상이야기</a></li>
	  <li><a href="list.do?board_idx=3">산책후기</a></li>
	  <li><a href=list.do?board_idx=4>쇼핑후기</a></li>
	</ul>
</div>

<!-- 메뉴바 끝-->

<!-- 반복 구간 시작 안되면 식으로 바꾸기-->


 



<!-- 반복구간 끝 -->
</table>




<!-- 검색 -->

<hr width='600' size='2' color='gray' noshade>
      
    <form class="search" action="list.do" >
      <select name="catgo">
        <option value="post_subject">제목</option>
        <option value="post_writer">글쓴이</option>
        <option value="post_content">내용</option>
      </select>
      <input type="text" name="keyword" size="20" required="required" /> <button class="btn">검색</button>
    </form>  

<!-- 검색 -->
<!-- 페이징 -->

<br>
    <div id="paging">
    <a href="#">이전</a>
    <c:forEach begin="1" end="${listResult.totalPageCount}" var="i">  
        <a href="list.do?cp=${i}">
   			<c:choose>
   			    <c:when test="${i==listResult.cp}">
                	<span class="bbs-strong">${i}</span>
                </c:when>
                <c:otherwise>
                    ${i}
                </c:otherwise>
			</c:choose>
    	</a>	
    </c:forEach>
    <a href="#">다음</a>
</div> 
 
<!-- 페이징 -->
<br>
<div id="list-menu">

     <a href="write.do" type="button" class="btn">새 글쓰기</a>
</div>


<!--게시판 끝-->



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
  <script src="../assets/js/jquery-3.3.1.min.js"></script>
  <script src="../assets/js/theme-change.js"></script>
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
          <p class="copy-footer-28 text-center"> &copy; 2021 With My pet from Us. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>
</section>
</body>
</html>