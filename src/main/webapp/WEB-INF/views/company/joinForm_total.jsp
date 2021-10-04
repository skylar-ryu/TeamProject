<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<title>회원가입</title>
<!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="resources/vendor/nouislider/nouislider.css">
<!-- Google fonts-->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
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
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/axCompany.js"></script>
<script>


var cnoFCheck=false;
var cpwFCheck=false;
var cpw2FCheck=false;
var cnmFCheck=false;
var cifFCheck=false;
var cadFCheck=false;
var cdtFCheck=false;
var perisFCheck=false;
var perieFCheck=false;
var priFCheck=false;


$(function(){
	$('#cno').focus();
	$('#cno').focusout(function(){
		cnoFCheck=cnoCheck();		
	}); //cnoCheck
	$('#cpw').focus();
	$('#cpw').focusout(function(){
		cpwFCheck=cpwCheck();		
	});	//cpwCheck
	$('#cname').focus();
	$('#cname').focusout(function(){
		cnmFCheck=cnmCheck();		
	});	//cnmCheck
	$('#cinfo').focus();
	$('#cinfo').focusout(function(){
		cifFCheck=cifCheck();		
	});	//cifCheck
	$('#caddr').focus();
	$('#caddr').focusout(function(){
		cadFCheck=cadCheck();		
	});	//cadCheck
	$('#cdate').focus();
	$('#cdate').focusout(function(){
		cdtFCheck=cdtCheck();		
	});	//cnmCheck
	$('#period_s').focus();
	$('#period_s').focusout(function(){
		perisFCheck=periCheck();		
	});	//cnmCheck
	$('#period_e').focus();
	$('#period_e').focusout(function(){
		perieFCheck=periCheck();		
	});	//cnmCheck
	$('#cprice').focus();
	$('#cprice').focusout(function(){
		priFCheck=priCheck();		
	});	//cnmCheck	
})//ready

function comInCheck() {
	if(cnoFCheck==false){
		$('#cnoMessage').html('사업자 번호를 입력하세요');
	}
	if(cpwFCheck==false){
		$('#cpwMessage').html('비밀번호를 입력하세요');
	}
	if (cnoFCheck && cpwFCheck) {
		alert('~~ 입력 완료 , 회원 가입 됩니다. ~~');
		return true;
	}
	else return false;
}//cnoIncheck

//** 사업자번호 중복 확인하기 :DB내에 중복확인(실제유무 모름)
function cnoDupCheck() {
	if (cnoFCheck==false) {
		cnoFCheck=cnoCheck();
	}else {
		var url="cnoCheck?cno="+$('#cno').val();
		window.open(url,"_blank",
			"toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=500,height=400");
	}
} //cnoDupCheck

function cjoinForm01() {
	opener.$('#cno').val('${newCno}');
	opener.document.getElementById('submit').disabled='';
	opener.document.getElementById('cnoDup').disabled='disabled';
	opener.$('#cno').prop('readonly',true);
	window.close(); 
} //cnoOK
</script>
</head>
  <body style="padding-top: 72px;">
  <header class="header">
	 <!-- Navbar-->
	 <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
	   <div class="container-fluid">
	     <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="home">
	       
	     <!--  *** 로고만들어서 로고 넣기  -->
	     <img src="resources/image/logo.svg" alt="Directory logo"></a>
	     </div>
	     
	     <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
	     <!-- Navbar Collapse -->
	     <div class="collapse navbar-collapse" id="navbarCollapse">
	       <ul class="navbar-nav ms-auto">
	         <li class="nav-item"><a class="nav-link active" id="home" href="home">Home</a>
	         </li>
	         <li class="nav-item"><a class="nav-link" href="문의게시판">고객센터</a>
	         </li>
	         <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              사업자회원메뉴</a>
	           <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
	             <h6 class="dropdown-header fw-normal">사업자회원</h6>
	             	<c:if test="${loginCno==null}">
		             	<a class="dropdown-item" href="cloginf">로그인</a>
	    	         	<a class="dropdown-item" href="cjoinf">회원가입</a>
	    	         </c:if>
	    	         <c:if test="${loginCno!=null}">
		   	         	<a class="dropdown-item" href="cdetail">내정보보기</a>&nbsp;&nbsp;
	    	        	<a class="dropdown-item" href="cdetail?cno=${loginCno}&jcode=U">내정보수정</a>&nbsp;&nbsp;
						<a class="dropdown-item" href="cinfo_main">사업자MyInfo</a>&nbsp;&nbsp;
						<a class="dropdown-item" href="clogout">로그아웃</a>&nbsp;&nbsp;
						<a class="dropdown-item" href="cdelete">회원탈퇴</a>&nbsp;&nbsp;
					 </c:if>
	           </div>
	         </li>
	         <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	              일반회원메뉴</a>
	           <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
	             <h6 class="dropdown-header fw-normal">일반회원</h6>
	             	<c:if test="${loginID==null}">
		             	<a class="dropdown-item" href="loginf">로그인</a>
	    	         	<a class="dropdown-item" href="joinf">회원가입</a>
	    	         </c:if>
	    	         <c:if test="${loginID!=null}">
						<a class="dropdown-item" href="cinfo_main">일반회원MyInfo</a>&nbsp;&nbsp;
						<a class="dropdown-item" href="logout">로그아웃</a>&nbsp;&nbsp;
					 </c:if>
	             <div class="dropdown-divider"></div>
	             <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="resources/docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
	           </div>
	         </li>
	         <li class="nav-item"><a class="nav-link" href="ccontent_main">업체정보보기</a></li>
	         <li class="nav-item"><a class="nav-link" href="loginf_total">통합로그인</a></li>
	         <li class="nav-item"><a class="nav-link" href="joinf_total">통합회원가입</a></li>
	         <li class="nav-item"><a class="nav-link" href="cjoinf01">사업자회원 회원가입테스트</a></li>
	         <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="rmainf">예약하기</a></li>
	       </ul>
	     </div>
	   </div>
	 </nav>
	</header>
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <div class="container my-5" style="background-color: #FFFFFF;" >
    <div class="row p-5 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg text-center">
      <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
        <h2 class="display-4 fw-bold lh-1">통합회원가입</h2>
        <p class="lead"><br>지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.   지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-sm-center mb-4 mb-lg-3">
          <a type="button" class="btn btn-outline-primary btn-lg px-4 me-md-2 fw-bold" href="joinf">일반회원가입</a>
          <a  type="button" class="btn btn-outline-secondary btn-lg px-4" href="cjoinf" >사업자회원가입</a>
        </div>
      </div>
      <div class="col-lg-4 offset-lg-1 p-0 overflow-hidden ms-auto">
      	  <img class="img-fluid" src="resources/img/illustration/undraw_High_five_re_jy71.svg" alt="" width="360">
      </div>
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