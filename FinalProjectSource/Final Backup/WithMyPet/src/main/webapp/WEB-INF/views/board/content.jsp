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
</head>

<body>
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
          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
              
          </button>

          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                      	<a class="dropdown-item" href="walklist.do">산책모집 </a>
                          <a class="dropdown-item" href="walkboard.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                      	<a class="dropdown-item" href="blog.html">쇼핑하기</a>
                          <a class="dropdown-item" href="blog.html">구매후기</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
	
<div class="title">
<h3>게시판 </h3>
산책에 관련된 내용을 업로드하는 게시판입니다.
</div>

<!-- 메뉴바 시작-->
<div class="menubar">
<br><br>
<div class="boardtitle">
<h3>게시판 </h3>
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
	  <li><a href="#산책게시판">공지사항</a></li>
	  <li><a href="#쇼핑게시판">일상이야기</a></li>
	  <li><a href="#contact">어쩌구</a></li>
	  <li><a href="#about">저쩌구</a></li>
	</ul>
	</div>
<!-- 메뉴바 끝-->



<!-- 컨텐츠시작 -->
<div class="header">#${board.post_idx}<br>
<div class="sub">${board.post_subject}</div>
<div class="user">${board.post_writer}</div> <div class="date">${board.post_date}</div> <div class="hit">조회 ${board.post_count}</div>
</div>

<div class="cont">${board.content}

<div class="modi"><a href='modify.do?post_idx=${board.post_idx}'>수정</a></div>
<div class="del"><a href='delete.do?post_idx=${board.post_idx}'>삭제</a></div>
</div>

<!-- 댓글 -->


<c:forEach items="${board.comment}" var="cmt">
<div class="reply">
	<div class="replyfirstsec">
	<div class="replywriter">${cmt.cmt_writer}님의 답변</div><br>
	${cmt.cmt_date}
	</div>
	<div class="replysecondsec">${cmt.cmt_content}</div>
	<div class="writecomment">댓글쓰기</div>
	<div class="modify"><a href='modifyCmt.do?comment_idx=${cmt.comment_idx}'>${cmt.comment_idx}수정</a></div>
	<div class="delete"><a href='deleteCmt.do?comment_idx=${cmt.comment_idx}'>삭제</a></div>
</div>
${cmt.cmt_content}
${cmt.cmt_writer}
</c:forEach>

<!-- 댓글 -->
<!-- 댓글작성 -->


<c:set value="${board}" var="board"/>
<form name="f1" method="post" action="replyUpload.do" id="writeReple">
<div class="writeReple">
	<div class="replyfirstsec">댓글달기<br>
	<div class="replywriter">내닉네임(${board.post_writer})</div><br>
	<input type="hidden" value="${board.post_writer}" name="cmt_writer"/>
	<input type="hidden" value="${board.post_idx}" name="post_idx"/>
	<input type="hidden" value="${board.board_idx}" name="board_idx"/>
	<input type="text" name="cmt_content" size=100px> <input type="button" value="등록" onclick="check()">
	</div>
</form>

</div>


<!-- 댓글작성 -->

<div class="cantWriteReple">
로그인 후에 댓글 작성이 가능합니다.
</div>

<!-- 컨텐츠끝 -->

  <script language="javascript">

  function check()
              {
              	if(f1.cmt_content.value == "")
	                  {
	                      alert("리플 내용과 비밀번호를 모두 입력하셔야 합니다.");
	                      return;
	                  }
                  	  f1.submit();
                  }
  
  
  
	</script>

</body>

</html>
