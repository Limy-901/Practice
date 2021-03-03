<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	  <!-- Required meta tags -->
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <title>Pooch Care an Animals Category Bootstrap Responsive Template | About </title>
	   <!-- google fonts -->  
	   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
	   <!-- google fonts --> 
	  <!-- Template CSS -->
	  <link rel="stylesheet" href="../assets/css/login.css">
	  <!-- Template CSS -->
	  <style>
	  	form {
	  		margin: 0 auto; 
       		width:500px;
	  		margin-top: 90px;
	  	}
	  	input, select, label, li {
		    -webkit-appearance: checkbox;
		}
		
		button{
		    
		    margin-right: 16px;
		}
		
		textarea{
			width:500px; 
			height:100px; 
		    resize:none;/* 크기고정 */ 
		/*   resize: horizontal; // 가로크기만 조절가능 
			resize: vertical;  세로크기만 조절가능  */
		}
		
	  </style>
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
                  <li class="nav-item">
                      <a class="nav-link" href="about.html">About</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="services.html">Services</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="gallery.html">Gallery</a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Blog<span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                          <a class="dropdown-item" href="blog.html">Blog Posts</a>
                          <a class="dropdown-item" href="blog-single.html">Blog single</a>
						   <a class="dropdown-item" href="landing-single.html">Landing Page</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="login.do">Login</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="agree.do">Signup</a>
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
&nbsp;

<form action="/member/signup.do" id="joinForm">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="all-chkbox" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chkbox1" class="agree-chkbox"> 
                        </li>
                    </ul>
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chkbox2" class="agree-chkbox">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>위치정보 이용약관 동의(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chkbox3" class="agree-chkbox">
                        </li>
                    </ul>
 
                    <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                </li>
                <li class="checkBox check04">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chkbox4" class="agree-chkbox">
                        </li>
                    </ul>
 
                </li>
            </ul>
            <ul class="footBtwrap clearfix">
                <!--<li><button class="fpmgBt1">비동의</button></li>
                <li><button class="fpmgBt2">동의</button></li>-->
                <button type="submit" class="btn btn-primary mt-4">비동의</button>
                <button type="submit" class="btn btn-primary mt-4">동의</button>
            </ul>
        </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
		   $("#all-chkbox").click(function(){
			   	var isChecked = $(this).prop("checked");
				$(".agree-chkbox").prop("checked", isChecked);
			  
		   });
		   
		   $(".agree-chkbox").click(function(){
			   var chkbox1 = $("#chkbox1").prop("checked");
			   var chkbox2 = $("#chkbox2").prop("checked");
			   var chkbox3 = $("#chkbox3").prop("checked");
			   var chkbox4 = $("#chkbox4").prop("checked");
			   
			   if(chkbox1 && chkbox2 && chkbox3 && chkbox4){
				   $("#all-chkbox").prop("checked", true);
			   } else {
				   $("#all-chkbox").prop("checked", false);
			   }
		   });
		});
	</script>
</body>