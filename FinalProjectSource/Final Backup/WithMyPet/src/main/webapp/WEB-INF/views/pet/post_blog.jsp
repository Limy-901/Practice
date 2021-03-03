<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Pooch Care an Animals Category Bootstrap Responsive Template | Home </title>
   <!-- google fonts -->  
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <!-- google fonts --> 
  <!-- Template CSS -->
  <link rel="stylesheet" href="../assets/css/mypage-detail.css">
  <!-- Template CSS -->
  <style>
	  	form {
	  		margin-top: 100px;
	  	}
	</style>
	<script>
		$(document).ready(function(){
			$("#my-post").click(function(){
				//location.href="";
			});
		});
	</script>
</head>

	
<body>
  <!--header-->
<header id="site-header" class="fixed-top nav-fixed">
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
                  <li class="nav-item">
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
                  <li class="nav-item dropdown active">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Blog<span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                          <a class="dropdown-item" href="blog.html">Blog Posts</a>
                          <a class="dropdown-item" href="blog-single.html">Blog single</a>
						   <a class="dropdown-item" href="landing-single.html">Landing Page</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="contact.html">Contact</a>
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
          <h2 class="title">Blog Posts</h2>
          <ul class="breadcrumbs-custom-path mt-2">
              <li><a href="#url">Home</a></li>
              <li class="active"><span class="fa fa-arrow-right mx-2" aria-hidden="true"></span> Single Post </li>
          </ul>
      </div>
  </div>
</section>
<!-- //about breadcrumb -->

<section class="w3l-blog-single" id="blog">
  <section class="w3l-blog-single1 py-5">
    <div class="container py-lg-5">
      <div class="d-grid-1">
        <div class="text">
          <ul class="tag">
              <li class="design">Pooch Care</li>
          </ul>
          <h3 class="hny-title mt-3">It is a long established fact a reader be distracted</h3>
          <ul class="blog-list">
            <li>
              <p><span class="fa fa-clock-o"></span> May 24 2020</p>
            </li>
            <li>
              <p><span class="fa fa-user"></span> By admin</p>
            </li>
            <li>
              <p><span class="fa fa-heart-o"></span> <strong>48</strong> likes</p>
            </li>
            <li>
              <p><span class="fa fa-comments-o"></span> <strong>12</strong> comments</p>
            </li>
          </ul>
        </div>
      </div>
      <div class="text-bg-image">
        <img src="assets/images/banner4.jpg" alt="" class="img-fluid radius-image">
      </div>
      <div class="text-content-text">
        <div class="d-grid-2">
          <div class="text2">
            <p class="text2-text mt-3">It is a long established fact that a reader will be distracted by the readable
              content of a page when looking at its
              layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as
              opposed to using 'Content here,
              content here', making it look like readable English. Lorem ipsum dolor sit amet consectetur, adipisicing
              elit. Repellat, hic
              reprehenderit
              eum cupiditate deleniti asperiores illum ad tenetur aliquam culpa fugit odit consequatur. Rerum illo
              accusantium aliquid quae adipisci fugiat sapiente delectus unde architecto. Tempore saepe maxime illo
              laborum obcaecati.</p>
            <div class="single-post-content-1 row mt-5 no-gutters">
              <div class="col-md-4">
                <img src="assets/images/g1.jpg" class="img-fluid radius-image mt-1" alt="blog-post-image">
              </div>
              <div class="col-md-8">
                <p class="mt-md-0 mt-4 ml-md-4 ml-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum
                  perspiciatis repellendus velit nam fuga asperiores nemo commodi enim corrupti est tenetur placeat
                  veritatis, dolores laborum illo, ducimus aut suscipit voluptate quo amet ratione magni nesciunt? Fuga
                  expedita earum veritatis optio dolorum deserunt eos. Non in temporibus similique quibusdam nihil qui,
                  consequatur, debitis ipsa aperiam dicta possimus itaque unde hic, voluptatum expedita. </p>
              </div>
            </div>
            <p class="text2-text2 mt-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis beatae ullam
              expedita. Ut explicabo minima fugit ipsum sapiente fuga et facere est autem iste ducimus totam accusamus
              quasi distinctio, excepturi voluptatum harum porro nostrum nemo iusto culpa expedita cupiditate omnis.
              Animi iusto officiis at voluptates vel laboriosam eum error voluptas. Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- text-styles-33 -->
  <section class="w3l-blog-single2">
    <div class="w3l-text-styles-33_sur">
      <div class="container">
        <div class="text-styles-top-33">
          <blockquote class="blockquote mb-md-5 mb-3">
            <q class="mb-3 d-block">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat nam, quos facere dolor repellendus odio. Voluptatum provident quasi necessitatibus laboriosam alias. </q>
            <footer class="blockquote-footer"> Alexander smith</footer>
          </blockquote>
        </div>
      </div>
    </div>
  </section>
  <!-- /text-styles-33 -->
  <!-- text -->
  <section class="w3l-blog-single3">
    <div class="text-element-9">
      <div class="container">
        <div class="d-grid grid-text-9">
          <div class="right-text-9">
            <h4 class="text-head-text-9"><a href="#text">It is a long established fact a reader be distracted.</a></h4>
            <h5 class="sub-head-text-9">It is a long established fact that a reader will be distracted by the readable
              content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less
              normal distribution of letters, as opposed to using 'Content here, content here', making it look like
              readable English.</h5>
            <p class="sub-para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat nam, quos facere dolor
              repellendus odio. Voluptatum provident quasi necessitatibus laboriosam alias dicta quis voluptate minus
              minima dolorum quod, quaerat modi veritatis libero! Culpa facilis enim optio veniam voluptas. Laudantium
              explicabo optio quam ea deleniti odio totam adipisci illo, enim quos corrupti. Animi labore natus at quas
              laborum. Soluta, nam molestiae.</p>
            <p class="sub-para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, tenetur amet.
              Quibusdam nemo aut ut non aliquam nam est quae aspernatur repellendus illo id earum ipsa debitis saepe
              maiores quasi voluptate, sunt reiciendis voluptatibus veniam pariatur? Tempore laudantium libero adipisci.
            </p>
            <div class="single-post-content-1 row mt-5 no-gutters">
              <div class="col-md-4">
                <img src="assets/images/g2.jpg" class="img-fluid radius-image mt-3" alt="blog-post-image">
              </div>
              <div class="col-md-8 align-self">
                <p class="mt-md-0 mt-4 ml-md-4 ml-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi
                  necessitatibus error dolore dolorem, aut possimus libero saepe doloremque sequi consequatur non
                  veritatis velit amet eligendi dolorum aspernatur sit laudantium quidem enim minima totam, ratione
                  sunt? Quis esse laborum magnam dolorem excepturi fuga consequatur a cumque incidunt aspernatur, quod
                  laudantium sunt assumenda labore. Adipisci deserunt animi reiciendis reprehenderit quam assumenda. </p>
              </div>
            </div>
            <div class="single-post-content-1 row mt-4 no-gutters">
              <div class="col-md-8">
                <p class="mb-md-0 mt-4 mb-4 mr-4">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Praesentium,
                  qui? Saepe necessitatibus hic, nemo eveniet tempore perspiciatis quo nisi tenetur nesciunt delectus
                  animi aperiam dolore fugiat, minus veniam. Expedita provident qui quia voluptas doloremque sed ex
                  possimus dolores ea, quos enim facilis autem vel asperiores beatae quidem eaque! Nihil veritatis quo,
                  fugit eligendi magnam officia hic libero iure amet consequatur sit qui asperiores inventore
                  temporibus!</p>
              </div>
              <div class="col-md-4">
                <img src="assets/images/g3.jpg" class="img-fluid radius-image mt-3" alt="blog-post-image">
              </div>
            </div>

            <div class="social-share-blog mt-4">
              <ul class="column3 social m-0 p-0">
                  <li>
                      <h4 class="m-0 mr-md-4 mr-2">Share this post :</h4>
                  </li>
                  <li><a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a></li>
              </ul>
          </div>


            <nav class="post-navigation row mt-5 py-4">
              <div class="post-prev col-6 pr-sm-5">
                <span class="nav-title">
                  <span class="fa fa-angle-double-left"></span> Prev Post </span>
                <a href="#url" rel="prev" class="posts-view posts-view-left">
                  <img src="assets/images/g9.jpg" class="img-fluid postimg radius-image d-none d-md-block">
                  <label>Lorem ipsum dolor sit amet</label>
                </a>
              </div>
              <div class="post-next col-6 pl-sm-5 text-right">
                <span class="nav-title">
                  Next Post <span class="fa fa-angle-double-right"></span> </span>
                <a href="#url" rel="next" class="posts-view posts-view-right">
                  <label>Lorem ipsum dolor sit amet</label>
                  <img src="assets/images/g8.jpg" class="img-fluid postimg radius-image d-none d-md-block">
                </a>
              </div>
            </nav>

          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //text -->



  
<!-- text-styles-30 -->
<section class="w3l-blog-single4">
  <div class="text-styles-30_sur py-5">
    <div class="container py-lg-3">
      <div class="text-styles-top-30">
        <h3 class="title-blog mb-4">Recent Comments</h3>
        <div class="media">
          <div class="img-circle">
            <img src="assets/images/f1.jpg" class="mr-3" alt="...">
          </div>
          <div class="media-body">
            <h5 class="mt-0">Alisa larden</h5>
            <span class="time">18 minutes ago</span>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum, officiis rerum assumenda facere maxime
              accusamus cum. Numquam harum vitae id. Nemo qui fugiat nam quasi?</p>
            <a href="#reply-form" class="reply">Reply</a>

            <div class="media mt-4">
              <a class="" href="#">
                <div class="img-circle img-circle-sm">
                  <img src="assets/images/f2.jpg" class="mr-3" alt="...">
                </div>
              </a>
              <div class="media-body">
                <h5 class="mt-0">Maxwell ker</h5>
                <span class="time">4 hours ago</span>
                <p>In gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio. Fusce condimentum
                  nunc ac nisi vulputate fringilla. Donec lacinia felis in .</p>
                <a href="#reply-form" class="reply">Reply</a>
              </div>
            </div>
          </div>
        </div>


        <div class="media mt-5">
          <div class="img-circle">
            <img src="assets/images/f3.jpg" class="mr-3" alt="...">
          </div>
          <div class="media-body">
            <h5 class="mt-0">Tony Elisa</h5>
            <span class="time">16 hours ago</span>
            <p>Facere atque minus necessitatibus deserunt quibusdam voluptas quo? Omnis temporibus at, reprehenderit
              exercitationem dolores fuga, iste quidem earum nihil iusto repellendus. Assumenda alias illo dignissimos
              corrupti doloribus. Tenetur architecto rerum.
            </p>
            <a href="#reply-form" class="reply">Reply</a>
          </div>
        </div>


        <div class="media mt-5">
          <div class="img-circle">
            <img src="assets/images/f4.jpg" class="mr-3" alt="...">
          </div>
          <div class="media-body">
            <h5 class="mt-0">Elizabeth mark</h5>
            <span class="time">Yerterday</span>
            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus
              odio. Fusce condimentum nunc
              ac
              nisi vulputate fringilla. Donec felis in faucibus.</p>
            <a href="#reply-form" class="reply">Reply</a>
          </div>
        </div>



      </div>
    </div>
  </div>
</section>
<!-- /text-styles-30 -->
<!-- /text-styles-30 -->
  <section class="w3l-blog-single5">
    <div class="grid-main py-3">
      <div class="container">
        <div class="horizontal-align">
          <div class="grids-titles">
            <h3 class="title-blog mb-4">Related posts</h3>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="blog-single.html">
                            <img class="card-img-bottom d-block" src="assets/images/g3.jpg" alt="Card image cap">
                        </a>

                    </div>
                    <div class="card-body blog-details">
                        <a href="blog-single.html" class="blog-desc">Lorem ipsum dolor sit amet
                        </a>
                        <p>Lorem ipsum dolor sit amet consectetur ipsum elit. Qui eligendi
                            vitae sit.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <a href="#author">Johnson smith</a> - <span class="meta-value"> May 23, 2020 </span>
                        </div>
                        <ul class="blog-meta">
                            <li class="meta-item blog-students">
                                <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                            </li>
                            <li class="meta-item blog-students">
                                <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                <div class="card">
                    <div class="card-header p-0 position-relative">
                        <a href="blog-single.html">
                            <img class="card-img-bottom d-block" src="assets/images/g4.jpg" alt="Card image cap">
                        </a>
                    
                    </div>
                    <div class="card-body blog-details">
                        <a href="blog-single.html" class="blog-desc">Lorem ipsum dolor sit amet
                        </a>
                        <p>Lorem ipsum dolor sit amet consectetur ipsum elit. Qui eligendi
                            vitae sit.</p>
                        <div class="author align-items-center mt-3 mb-1">
                            <a href="#author">Johnson smith</a> - <span class="meta-value"> May 23, 2020 </span>
                        </div>
                        <ul class="blog-meta">
                            <li class="meta-item blog-students">
                                <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                            </li>
                            <li class="meta-item blog-students">
                                <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
  </div></section>
  <!-- form 29 block -->
<section class="w3l-blog-single6" id="reply-form">
  <div class="form-29 py-5">
      <div class="container pb-lg-3">
          <div class="form-main-cont-29">
              <div class="content-29-form align-center">
                  <h3 class="title-blog mb-4">Leave a reply</h3>
                  <form action="#" method="post">
                      <div class="w3l-forms-29-form">
                          <div class="">
                              <input type="text" class="form-control" name="name" placeholder="Your Name*" required="">
                          </div>
                          <div class="">
                              <input type="email" class="form-control" name="email" placeholder="Email Address*" required="">
                          </div>
                          <div class="">
                              <input type="text" class="form-control" name="subject" placeholder="Subject">
                          </div>
                          <div class="">
                              <input type="phone" class="form-control" name="subject" placeholder="Phone">
                          </div>
                      </div>
                      <div class="mt-4">
                          <textarea class="contact-textarea form-control" placeholder="Your Message*" required=""></textarea>
                      </div>
                      <div class="text-right mt-4">
                          <button class="btn btn-style btn-primary">Add Comment</button>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </div>
</section>
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
          <p class="copy-footer-28 text-center"> © 2020 Pooch Care. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top" style="display: block;">
    ⤴
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
<!-- //footer-28 block -->
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
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/theme-change.js"></script>
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

  <script src="assets/js/bootstrap.min.js"></script>

<!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>
</section></body>
</html>