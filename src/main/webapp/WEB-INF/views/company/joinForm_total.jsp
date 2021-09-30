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
/* //** 사업자번호 : 자동 하이픈 추가  
function addHypen(obj) {
    var number = obj.value.replace(/[^0-9]/g, "");
    var cnoNum = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 5) {
    	cnoNum += number.substr(0, 3);
    	cnoNum += "-";
    	cnoNum += number.substr(3);
    } else if(number.length < 10) {
    	cnoNum += number.substr(0, 3);
    	cnoNum += "-";
    	cnoNum += number.substr(3, 2);
    	cnoNum += "-";
    	cnoNum += number.substr(5);
    } else {
    	cnoNum += number.substr(0, 3);
    	cnoNum += "-";
    	cnoNum += number.substr(3, 2);
    	cnoNum += "-";
    	cnoNum += number.substr(5);
    }
    obj.value = cnoNum;
} */

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
 <div class="py-3 py-lg-5">
 	<div>
 	
 	</div>
 </div>
<%--     <section>
	  <div class="container my-5 shadow">
	  	<div class="row text-center">
		    <ul class="nav nav-pills nav-justified" id="myTab" role="tablist">
			  <li class="nav-item" role="presentation">
			    <button class="nav-link " id="basic-tab" data-bs-toggle="tab" data-bs-target="#basic" type="button" role="tab" aria-controls="basic" aria-selected="true">일반회원가입</button>
			  </li>
			  <li class="nav-item" role="presentation">
			    <button class="nav-link active" id="business-tab" data-bs-toggle="tab" data-bs-target="#business" type="button" role="tab" aria-controls="business" aria-selected="false">사업자회원가입</button>
			  </li>
			</ul>
		<div class="py-2 py-lg-5 tab-content" id="myTabContent" style="background-color: #e5e5e5; align-content: center;">
		  <div class="tab-pane fade" id="basic" role="tabpanel" aria-labelledby="basic-tab">
		  	<p class="text-muted">지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
            <p class="text-muted mb-5">지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
            <p class="mb-5 mb-lg-0"> <a class="btn btn-primary" href="joinf">일반회원가입</a></p>
		  </div>
		  <div class="tab-pane fade show active" id="business" role="tabpanel" aria-labelledby="business-tab">
		  	<p class="text-muted">지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
            <p class="text-muted mb-5">지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
            <input class="cjoin_cnoNum" type="text" name="cno" id="cno" onKeyup = "addHypen(this)" maxlength="12" placeholder="사업자번호 10자리를 하이픈(-) 없이 입력하세요." required>						
            <p class="mb-5 mb-lg-0 py-2 py-lg-3">
            	<input class="btn btn-primary" type="button" value="사업자번호인증" id="cnoDup" onclick="cnoDupCheck()">
            	<c:if test="${cnoUse=='T'}">
            		 <a class="btn btn-primary" href="cjoinf">사업자회원가입</a>
            	</c:if></p>
         </div>
		</div>
       </div> 
      </div>
    </section>
     --%>
    <div class="container my-5">
    <div class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg text-center">
      <div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
        <h1 class="display-4 fw-bold lh-1">통합회원가입</h1>
        <p class="lead">지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요. 지금 회원 가입하신 후 문화플랫폼의 다양한 서비스를 만나보세요.</p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">
          <a type="button" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold" href="joinf">일반회원가입</a>
          <a  type="button" class="btn btn-outline-secondary btn-lg px-4" href="cjoinf" >사업자회원가입</a>
        </div>
      </div>
      <div class="col-lg-4 offset-lg-1 p-0 overflow-hidden shadow-lg">
      	  <img class="rounded-lg-3" src="resources/img/illustration/undraw_celebration_0jvk.svg" alt="" width="400">
          <img class="rounded-lg-3" src="bootstrap-docs.png" alt="" width="720">
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