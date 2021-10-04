<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Personal info</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/css/style.default.222cad84.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/inCheck.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

/* function updateCh() {
	alert('회원정보가 정상적으로 수정되었습니다.');
} */

//1) 전역변수 정의
var iCheck = false;
var pCheck = false;
var cCheck = false;
var nCheck = false;
var bCheck = false;
var tCheck = false;
var eCheck = false;
var aCheck = false;

//2) 개별컬럼의 무결성 점검
$ (function (){
	$('#id').focus();
	
	$('#id').focusout(function() {
		iCheck=idCheck();
	}); //id_focusout 
	
	$('#pw').focusout(function() {
		pCheck=pwCheck();
	}); //pw_focusout
	
	$('#checkpw').focusout(function() {
		cCheck=cpCheck();
	}); //checkpw_focusout
	
	$('#name').focusout(function() {
		nCheck=nmCheck();
	}); //name_focusout
	
	$('#birth').focusout(function() {
		bCheck=bdCheck();
	}); //birth_focusout
	
	$('#tel').focusout(function() {
		tCheck=telCheck();
	}); //tel_focusout
	
	$('#email').focusout(function() {
		eCheck=emCheck();
	}); //email_focusout
	
	$('#addr').focusout(function() {
		aCheck=adCheck();
	}); //addr_focusout

}); //ready

function inCheck() {
	
	if(iCheck==false) {
		$('#iMessage').html(' 아이디를 입력하세요.');
	}
	if(pCheck==false) {
		$('#pMessage').html(' 비밀번호를 입력하세요.');
	}
	if(cCheck==false) {
		$('#cMessage').html(' 비밀번호 확인을 입력하세요.');
	}
	if(nCheck==false) {
		$('#nMessage').html(' 이름을 입력하세요.');
	}
	if(bCheck==false) {
		$('#bMessage').html(' 생년월일을 입력하세요.');
	}
	if(tCheck==false) {
		$('#tMessage').html(' 전화번호를 입력하세요.');
	}
	if(eCheck==false) {
		$('#emMessage').html(' 이메일을 입력하세요.');
	}
	if (iCheck && pCheck && cCheck && nCheck && bCheck && tCheck && eCheck) {
		alert('회원가입 되었습니다. \n로그인 후 이용하세요 :-)');
		return true;
	} else 
		return false;
} //inCheck
	
}
function addHypen(obj) {
    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}

</script>
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
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="home" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   RESERVATION</a>
                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                  <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                </div>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="homeDropdownMenuLink" href="home" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   COMMUNITY</a>
               	<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="aboard">Notice</a><a class="dropdown-item" href="aboard">Q&A</a><a class="dropdown-item" href="aboard">Review <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
              </li>
			  <!-- 관리자일때만 메뉴확인가능 -->
			  <c:if test="${loginID == 'admin'}">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="homeDropdownMenuLink" href="home" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   LIST</a>
                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="pcplist">일반회원 목록</a><a class="dropdown-item" href="comlist">사업자회원 목록</a><div class="dropdown-divider"></div><a class="dropdown-item" href="#">예약관리</a></div>
              </li>
              </c:if>
			   <!-- 로그인했을 시 메뉴확인가능 -->
			 <c:if test="${loginID!=null || loginCno!=null}">
				<li class="nav-item"><a class="nav-link" href="paccountf">MYPAGE</a></li>
	 			<li class="nav-item"><a class="nav-link" href="logout">LOGOUT</a></li>
             </c:if>
              <!-- 로그인 안 했을 시-->
             <c:if test="${loginID==null && loginCno==null}">
              	<li class="nav-item"><a class="nav-link" href="loginf">LOGIN</a></li>
              	<li class="nav-item"><a class="nav-link" href="joinf">JOIN</a></li>
             </c:if>
              <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Add a listing</a></li>
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
          <li class="breadcrumb-item"><a href="home">Home</a></li>
          <li class="breadcrumb-item"><a href="paccountf">Account</a></li>
          <li class="breadcrumb-item active">Personal info   </li>
        </ol>
        <h1 class="hero-heading mb-0">Personal info</h1>
        <p class="text-muted mb-5">Manage your Personal info and settings here.</p>
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0">
            <div class="text-block"> 
              <div class="row mb-3">
                <div class="col-sm-9">
                  <h5>Personal Details</h5>
                </div>
                <div class="col-sm-3 text-end">
                  <button class="btn btn-link ps-0 text-primary collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#personalDetails" aria-expanded="false" aria-controls="personalDetails">Update</button>
                </div>
              </div>
              <p class="text-sm text-muted"><i class="fa fa-id-card fa-fw me-2"></i>${Apple.name} (${Apple.id})<br><i class="fa fa-birthday-cake fa-fw me-2"></i>${Apple.birth}<br><i class="fa fa-envelope-open fa-fw me-2"></i>${Apple.email}  <span class="mx-2"> | </span>  <i class="fa fa-phone fa-fw me-2"></i>${Apple.tel}<br><i class="fa fa-address-book fa-fw flex-shrink-0 me-2"></i>(${Apple.postcode}) ${Apple.addr}, ${Apple.detailAddr}</p>
              <div class="collapse" id="personalDetails">
                <form action="pupdate" method="post">
                  <div class="row pt-4">
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="id">아이디</label>
                      <input class="form-control" type="text" name="id" id="id" value="${Apple.id}" readonly>
                    </div>
                   <div class="mb-4 col-md-6">
                      <label class="form-label" for="pw">비밀번호</label>
                      <input class="form-control" type="password" name="pw" id="pw" value="${Apple.pw}" required>
                    </div>  
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="name">이름</label>
                      <input class="form-control" type="text" name="name" id="name" value="${Apple.name}" required>
                    </div>                               
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="birth">생년월일</label>
                      <input class="form-control" type="date" name="birth" id="birth" value="${Apple.birth}" required>
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="email">이메일</label>
                      <input class="form-control" type="email" name="email" id="email" value="${Apple.email}" required>
                      <span id="emMessage" class="eMessage form-label text-danger"></span>
                    </div>
                    <div class="mb-4 col-md-6">
                      <label class="form-label" for="tel">연락처</label>
                      <input class="form-control" type="tel" name="tel" id="tel" value="${Apple.tel}" onKeyup = "addHypen(this)" maxlength="13" placeholder="하이픈(-) 없이 입력하세요." required>
                    </div>
                    <div class="mb-4 col-md-12">
                      <label class="form-label" for="addr">주소</label>
                      <input class="form-control" type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br> 
					  <input class="form-control" name="postcode" id="postcode" type="text" placeholder="우편번호" size="10" value="${Apple.postcode}">
					  <input class="form-control" name="addr" id="addr" type="text" placeholder="주소" size="45" value="${Apple.addr}">
					  <input class="form-control" name="detailAddr" id="detailAddr" type="text" placeholder="상세주소" value="${Apple.detailAddr}">
				  	  <input class="form-control" name="extraAddr" id="extraAddr" type="hidden" placeholder="참고항목">
				  	  <script>
      function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddr").value = extraAddr;                
                } else {
                    document.getElementById("extraAddr").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("addr").value = addr;
                
                document.getElementById("detailAddr").focus();
          		  }
        	}).open();
   		 }
	</script>
                    </div>
                  </div>
                  <button class="btn btn-outline-primary mb-4" type="submit" onclick="return inCheck()">정보 수정</button>
                </form>
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
                <li class="list-inline-item"><img class="w-2rem" src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <button class="btn btn-primary btn-sm d-none d-lg-block" type="button" data-bs-toggle="collapse" data-bs-target="#style-switch" id="style-switch-button">
      <svg class="svg-icon svg-icon-md">
        <use xlink:href="#configuration-1"> </use>
      </svg>
    </button>
    <div class="collapse" id="style-switch">
      <div class="p-4">
        <h6 class="text-uppercase mb-4">Select theme colour</h6>
        <form class="mb-3">
          <select class="form-select style-switch-select" name="colour" id="colour">
            <option value="">select colour variant</option>
            <option value="resources/css/style.default.222cad84.css">blue</option>
            <option value="resources/css/style.pink.8e944c0e.css">pink</option>
            <option value="resources/css/style.green.dbb19695.css">green</option>
            <option value="resources/css/style.red.25441cbe.css">red</option>
            <option value="resources/css/style.violet.46bbf1a3.css">violet</option>
            <option value="resources/css/style.sea.e2d18689.css">sea</option>
          </select>
        </form>
        <p class="text-muted text-xs mb-0">Stylesheet switching in this demo is done with JavaScript and can cause a blink while page loads. This will not happen in your production code.</p>
      </div>
    </div>
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
      //- injectSvgSprite('${path}icons/orion-svg-sprite.69651a96.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/directory/2-0-1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="resources/js/demo.36f8799a.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="resources/js/theme.0750373b.js"></script>
</body>
</html>