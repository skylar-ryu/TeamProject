<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 사업자 Info **</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="resources/myLib/jquery-3.6.0.min.js"></script>
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<!--  <script>
function setClock() {
	var now = new Date();
	var t = "* Now : "
		+now.getFullYear()+"년"+(now.getMonth()+1)+"월"+now.getDate()+"일_"
		+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds() ;
	document.getElementById("clock").innerHTML=t;	
}
</script> -->
<script>
function updateDone() {
	alert('회원정보가 정상적으로 수정되었습니다.');
}
</script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="resources/css/style.default.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="resources/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
<!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

</head>
 <body style="padding-top: 72px;">
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
          <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="home"><img src="resources/img/logo.svg" alt="Directory logo"></a>
            <form class="form-inline d-none d-sm-flex" action="#" id="search">
              <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3"> 
                <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
              </div>
            </form>
          </div>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
              <div class="input-label-absolute input-label-absolute-left w-100">
                <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
              </div>
            </form>
            <ul class="navbar-nav ms-auto">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Home</a>
                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Template</a>
                <div class="dropdown-menu megamenu py-lg-0">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Homepage</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Restaurants</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Rooms</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Blog</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Host</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">User</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="row megamenu-services d-none d-lg-flex ps-lg-5">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#destination-map-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Best rentals</h6>
                              <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-box-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Earn points</h6>
                              <p class="mb-0 text-muted text-sm">And get great rewards</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">020-800-456-747</h6>
                              <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Secure Payment</h6>
                              <p class="mb-0 text-muted text-sm">Secure Payment</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="resources/img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Docs</a>
                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                  <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="resources/docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="resources/docs/components-directory.html">Theme </a>
                </div>
              </li>
              <li class="nav-item dropdown ms-lg-3"><a id="userDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <img class="avatar avatar-sm avatar-border-white me-2" src="img/avatar/avatar-10.jpg" alt="Jack London"></a>
                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdownMenuLink"><a class="dropdown-item" href="user-booking-1.html">Booking process - 4 pages </a><a class="dropdown-item" href="user-grid.html">Bookings &mdash; grid view </a><a class="dropdown-item" href="user-booking-detail.html">Booking detail </a>
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="login.html"><i class="fas fa-sign-out-alt me-2 text-muted"></i> Sign out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- /Navbar -->
    </header>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="home">홈</a></li>
          <li class="breadcrumb-item"><a href="cinfo_main">계정</a></li>
          <li class="breadcrumb-item active">사업자회원 정보  </li>
        </ol>
        <h1 class="hero-heading mb-0">사업자회원 Info</h1>
        <p class="text-muted mb-5">회원들에게 보여지는 업체정보 입니다.<br>수정 화면에서 정보 변경하세요.</p>
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0">
            <div class="text-block"> 
              <div class="row mb-3">
                <div class="col-sm-9">
                  <h5>사업자회원 상세정보</h5>
                </div>
                <div class="col-sm-3 text-end">
                  <button class="btn btn-link ps-0 text-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#personalDetails" aria-expanded="false" aria-controls="personalDetails">정보 수정하기</button>
                </div>
              </div>
              <p class="text-sm text-muted"><i class="fa fa-id-card fa-fw me-2"></i><b>${Apple.cname}</b>&nbsp;님&nbsp;&nbsp;(사업자번호 : ${Apple.cno})<br>
              <i class="fa fa-tag fa-fw me-2"></i> 
              			<c:choose>
							<c:when test="${Apple.ctype=='A'}">맛집</c:when>
							<c:when test="${Apple.ctype=='B'}">도서관</c:when>
							<c:when test="${Apple.ctype=='C'}">카페</c:when>
							<c:when test="${Apple.ctype=='D'}">팝업스토어</c:when>
							<c:when test="${Apple.ctype=='E'}">전시</c:when>
							<c:when test="${Apple.ctype=='F'}">축제</c:when>
							<c:when test="${Apple.ctype=='G'}">선택카테고리 없음</c:when>
						</c:choose><br>
              <i class="fa fa-envelope-open fa-fw me-2"></i>${Apple.csite}<span class="mx-2"> | </span><i class="fa fa-phone fa-fw me-2"></i>${Apple.ctel}<span class="mx-2"> | </span>
              <i class="fa fa-car fa-fw me-2"></i>
              			<c:choose>
							<c:when test="${Apple.cpark=='Y'}">가능</c:when>
							<c:when test="${Apple.cpark=='N'}">불가능</c:when>
							<c:when test="${Apple.cpark==null}">알수없음</c:when>
						</c:choose></p>
              <div class="collapse" id="personalDetails">
                <form action="cupdate_info" method="get">
                  <div class="row pt-4">
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="name">사업자명</label>
                      <input class="form-control" type="text" name="cname" id="cname" value="${Apple.cname}">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="number">사업자번호</label>
                      <input class="form-control" type="number" name="cno" id="cno" value="${Apple.cno}" readonly="readonly">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="ctype">카테고리</label>
                      <select class="form-control dropdown-toggle" name="ctype" id="ctype">
							<c:choose>
							<c:when test="${Apple.ctype=='A'}">
								<option value="A" selected>맛집</option>
								<option value="B">도서관</option>
								<option value="C">카페</option>
								<option value="D">팝업스토어</option>
								<option value="E">전시</option>
								<option value="F">축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='B'}">
								<option value="A">맛집</option>
								<option value="B" selected>도서관</option>
								<option value="C">카페</option>
								<option value="D">팝업스토어</option>
								<option value="E">전시</option>
								<option value="F">축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='C'}">
								<option value="A">맛집</option>
								<option value="B">도서관</option>
								<option value="C" selected>카페</option>
								<option value="D">팝업스토어</option>
								<option value="E">전시</option>
								<option value="F">축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='D'}">
								<option value="A">맛집</option>
								<option value="B">도서관</option>
								<option value="C">카페</option>
								<option value="D" selected>팝업스토어</option>
								<option value="E">전시</option>
								<option value="F">축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='E'}">
								<option value="A">맛집</option>
								<option value="B">도서관</option>
								<option value="C">카페</option>
								<option value="D">팝업스토어</option>
								<option value="E" selected>전시</option>
								<option value="F">축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='F'}">
								<option value="A">맛집</option>
								<option value="B">도서관</option>
								<option value="C">카페</option>
								<option value="D">팝업스토어</option>
								<option value="E">전시</option>
								<option value="F" selected>축제</option>
							</c:when>
							<c:when test="${Apple.ctype=='G'}">
								<option value="G" selected>선택해주세요</option>
								<option value="A">맛집</option>
								<option value="B">도서관</option>
								<option value="C">카페</option>
								<option value="D">팝업스토어</option>
								<option value="E">전시</option>
								<option value="F">축제</option>
							</c:when>
							</c:choose>
						</select>                
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="phone">SNS 및 사이트</label>
                      <input class="form-control" type="text" name="csite" id="csite" value="${Apple.csite}">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="phone">연락처</label>
                      <input class="form-control" type="tel" name="ctel" id="ctel" value="${Apple.ctel}">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="phone">주차 여부</label>
                      <select class="form-control dropdown-toggle" name="cpark" id="cpark">
						<c:choose>
							<c:when test="${Apple.cpark=='Y'}">
								<option value="Y" selected>가능</option>
								<option value="N">불가능</option>
							</c:when>
							<c:when test="${Apple.cpark=='N'}">
								<option value="Y">가능</option>
								<option value="N" selected>불가능</option>
							</c:when>
							<c:when test="${Apple.cpark==null}">
								<option selected>선택해주세요</option>
								<option value="Y">가능</option>
								<option value="N">불가능</option>
							</c:when>
						</c:choose>
					</select>
                    </div>
                  </div>
                  <button class="btn btn-outline-primary mb-4" type="submit" onclick="return updateDone()">정보 수정 완료</button>
                </form>
              </div>
            </div>
            <div class="text-block"> 
              <div class="row mb-3">
                <div class="col-sm-9">
                  <h5>위치</h5>
                </div>
                <div class="col-sm-3 text-end">
                  <button class="btn btn-link ps-0 text-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#address" aria-expanded="false" aria-controls="address">Change</button>
                </div>
              </div>
              <div class="d-flex text-sm text-muted"> <i class="fa fa-map fa-fw flex-shrink-0 me-2"></i>
                <div class="mt-n1">${Apple.caddr}<br></div>
              </div>
              <div class="collapse" id="address">
                <form action="#">
                  <div class="row pt-4">
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="street">Street</label>
                      <input class="form-control" type="text" name="street" id="street" value="123 Main St.">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="apt">Apt. (optional)</label>
                      <input class="form-control" type="text" name="apt" id="apt" value="Apt #7">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="city">City</label>
                      <input class="form-control" type="text" name="city" id="city" value="San Francisco">
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="state">State</label>
                      <select class="selectpicker form-control" name="state" id="state" data-style="btn-selectpicker">
                        <option value="state_0">Alabama    </option>
                        <option value="state_1">Alaska    </option>
                        <option value="state_2">Arizona    </option>
                        <option value="state_3">Arkansas    </option>
                        <option value="state_4" selected>California    </option>
                        <option value="state_5">Colorado    </option>
                        <option value="state_6">Connecticut    </option>
                        <option value="state_7">Delaware    </option>
                        <option value="state_8">Florida    </option>
                        <option value="state_9">Georgia    </option>
                        <option value="state_10">Hawaii    </option>
                        <option value="state_11">Idaho    </option>
                        <option value="state_12">Illinois    </option>
                        <option value="state_13">Indiana    </option>
                        <option value="state_14">Iowa    </option>
                        <option value="state_15">Kansas    </option>
                        <option value="state_16">Kentucky    </option>
                        <option value="state_17">Louisiana    </option>
                        <option value="state_18">Maine    </option>
                        <option value="state_19">Maryland    </option>
                        <option value="state_20">Massachusetts    </option>
                        <option value="state_21">Michigan    </option>
                        <option value="state_22">Minnesota    </option>
                        <option value="state_23">Mississippi    </option>
                        <option value="state_24">Missouri    </option>
                        <option value="state_25">Montana    </option>
                        <option value="state_26">Nebraska    </option>
                        <option value="state_27">Nevada    </option>
                        <option value="state_28">New Hampshire    </option>
                        <option value="state_29">New Jersey    </option>
                        <option value="state_30">New Mexico    </option>
                        <option value="state_31">New York    </option>
                        <option value="state_32">North Carolina    </option>
                        <option value="state_33">North Dakota    </option>
                        <option value="state_34">Ohio    </option>
                        <option value="state_35">Oklahoma    </option>
                        <option value="state_36">Oregon    </option>
                        <option value="state_37">Pennsylvania    </option>
                        <option value="state_38">Rhode Island    </option>
                        <option value="state_39">South Carolina    </option>
                        <option value="state_40">South Dakota    </option>
                        <option value="state_41">Tennessee    </option>
                        <option value="state_42">Texas    </option>
                        <option value="state_43">Utah    </option>
                        <option value="state_44">Vermont    </option>
                        <option value="state_45">Virginia    </option>
                        <option value="state_46">Washington    </option>
                        <option value="state_47">West Virginia    </option>
                        <option value="state_48">Wisconsin    </option>
                        <option value="state_49">Wyoming    </option>
                      </select>
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="zip">ZIP</label>
                      <input class="form-control" type="text" name="zip" id="zip" value="902 10">
                    </div>
                  </div>
                  <button class="btn btn-outline-primary">Save address</button>
                </form>
              </div>
            </div>
          </div>
          <div class="col-md-8 col-lg-4 ms-lg-auto">
            <div class="card border-0 shadow">
              <div class="card-header bg-primary-light py-4 border-0">
                <div class="d-flex align-items-center">
                  <div>
                    <h4 class="h6 subtitle text-sm text-primary">What info is shared with others?</h4>
                  </div>
                  <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-primary flex-shrink-0">
                    <use xlink:href="#identity-1"> </use>
                  </svg>
                </div>
              </div>
              <div class="card-body p-4">
                <p class="text-muted text-sm card-text">Directory only releases contact information for hosts and guests <strong>after a reservation is confirmed</strong>.</p>
                <p class="text-muted text-sm card-text">Amet nisi eiusmod minim commodo sit voluptate aute ut quis ea veniam sunt proident ex. <strong>Exercitation culpa laboris</strong> consequat fugiat non ipsum veniam Lorem aliqua deserunt tempor elit veniam.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer-->
    <footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-200 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
              <ul class="list-inline">
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="index.html">Rooms</a></li>
                <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
                <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
                <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
                <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Pages</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
                <li><a class="text-muted" href="team.html">Team                                   </a></li>
                <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
              <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
              <form action="#" id="newsletter-form">
                <div class="input-group mb-3">
                  <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                  <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
              <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                <li class="list-inline-item"><img class="w-2rem" src="resources/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="resources/img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/js/theme.js"></script>
  </body>
</html>