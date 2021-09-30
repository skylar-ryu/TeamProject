<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<title>** 사업자 회원가입_테스트04 **</title>

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

<!-- G마켓 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name='description' />
<meta name='keywords' />
<link rel='shortcut icon' href='https://sslimage.gmarket.co.kr/_Net/MyG/favicon/gmarket.ico' />	
<link rel="apple-touch-icon-precomposed" href='https://sslimage.gmarket.co.kr/_Net/apple-touch-icon-precomposed.png'/>
<link rel="apple-touch-icon" href='https://sslimage.gmarket.co.kr/_Net/apple-touch-icon.png'/>

<script type='text/javascript' src='https://www.gmarket.co.kr/challenge/neo_include/favicon_net.js'></script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/js/json2.js"></script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/js/jquery-ui-1.8.17.min.js"></script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/js/jquery.popupwindow.js"></script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/../fnp/desktop-layout.js"></script>
<script type="text/javascript" src="/Scripts/Common.js" ></script>
<script type="text/javascript" src="/Scripts/ScriptEventErrorHandler.js" ></script>
<script type="text/javascript">
$(document).jsErrorHandler();
var _ContentUrls = ["http://script.gmkt.kr/_Net/css/myg/","http://image.gmarket.co.kr/_Net/","http://script.gmkt.kr/_Net/","https://script.gmkt.kr/_Net/css/myg/ssl/","https://sslimage.gmarket.co.kr/_Net/","https://script.gmkt.kr/_Net/","http://myg.gmarket.co.kr/","https://myg.gmarket.co.kr/","http://member.gmarket.co.kr/","https://member.gmarket.co.kr/","http://gbank.gmarket.co.kr/","https://gbank.gmarket.co.kr/","http://claim.gmarket.co.kr/","https://claim.gmarket.co.kr/","http://escrow.gmarket.co.kr/","https://sslescrow.gmarket.co.kr/","http://diary.gmarket.co.kr/","http://event.gmarket.co.kr/","http://sns.gmarket.co.kr/","http://www.gmarket.co.kr/","https://www.gmarket.co.kr/","http://item.gmarket.co.kr/","http://shop.gmarket.co.kr/","http://member2.gmarket.co.kr/","https://sslmember2.gmarket.co.kr/","http://promotion.gmarket.co.kr/","http://diary2.gmarket.co.kr/","http://eventnet.gmarket.co.kr/","http://ebay.gmarket.co.kr/","http://www.g9.co.kr/","http://signin.gmarket.co.kr/","https://signinssl.gmarket.co.kr/","http://english.gmarket.co.kr/","https://english.gmarket.co.kr/","http://pics.gmkt.kr/","https://pics.gmkt.kr/","http://www.sfcmall.com/","https://www.sfcmall.com/","/","/","/","/","/","/","/","/","https://www.g9.co.kr/","https://diary2.gmarket.co.kr/","/",];

  </script>
<script type="text/javascript" src="https://script.gmkt.kr/_Net/js/dimmed.js"></script>
<script type='text/javascript' src='https://script.gmkt.kr/_Net/js/gmkt.js?dummy=2012091327262'></script>
<link rel="stylesheet" type="text/css" href="https://script.gmarket.co.kr/pc/css/ko/common.css" />	
<link rel="stylesheet" type="text/css" href="https://script.gmarket.co.kr/pc/css/common/kr/ui/desktop_layout.css" />
<script type="text/javascript" src="https://script.gmarket.co.kr/pc/js/ko/joinRenewal.js"></script>
<script type="text/javascript" src="https://script.gmarket.co.kr/js/common/pds_gmkt.js"></script>
<script type="text/javascript" src='https://sslmember2.gmarket.co.kr/Scripts/Registration/MemberRegistration.js'></script>
<link rel="stylesheet" type="text/css" href="https://script.gmarket.co.kr/pc/css/ko/member_join.css?dummy=20170309" />


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

//** 사업자번호 중복 확인하기
function cnoDupCheck() {
	if (cnoFCheck==false) {
		cnoFCheck=cnoCheck();
	}else {
		var url="cnoCheck?cno="+$('#cno').val();
		window.open(url,"_blank",
			"toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=500,height=400");
	}
} //cnoDupCheck

</script>
</head>
<body>
	<div class="join_content" id="main"><!-- WPR-973 -->
		<div id="basic" class="typebox select">
			<h3 class="bg_area main_bg tit"><a href="#basic"><span class="bg_area main_bg">개인 구매회원</span></a></h3>
			<div class="wrap_cont"><!-- WPR-973 회원가입수정사항으로 인하여 추가 되었습니다. -->
				<p class="info_txt"> 
					<span class="bg_area main_bg hello">G마켓에 오신 것을 환영합니다.</span>
					<span class="txt">지금 회원 가입하신 후 G마켓의 다양한 서비스를 만나보세요.</span><!-- WPR-973 -->
				</p>
				<div class="btn_zone">
					<a href="#" id="simple_regi" class="bg_area btn_bg l1 md"><span>가입하기</span></a>
				</div>
				<div class="join_note main_bg">
						<h4 class="tit">회원가입 유의사항</h4>
						<p>회원가입은 간단한 정보입력만으로 가입이 가능하나, 상품결제나 스마일캐시 등 실명<br>기반 서비스 이용 시에는 실명인증이 필요할 수 있습니다. </p>
					</div>
				<div class="global_txt">
					<p>
						You can also join us at our English/Chinese page!<br> <span class="cn">您还可以在英文/中文网站注册!</span>
					</p>
					<p class="btn_zone">
						<a href="javascript:GoGlobal_Registration('english');" class="bg_area main_bg btn">ENGLISH</a>
						<a href="javascript:GoGlobal_Registration('china');" class="bg_area main_bg btn cn">中文</a>
					</p>
				</div>
			</div><!-- WPR-973 회원가입수정사항으로 인하여 추가 되었습니다. -->
		</div>
		<!-- // basic -->
		<div id="business" class="typebox">
			<h3 class="bg_area main_bg tit"><a href="#business"><span class="bg_area main_bg">사업자 구매회원</span></a></h3>
			<p class="info_txt"> 
				<span class="bg_area main_bg hello">G마켓에 오신것을 환영합니다.</span>
				<span>사업자 구매회원 가입 페이지 입니다. 판매를 원하시는 분은 <a href="https://sslmember2.gmarket.co.kr/Registration/MemberRegistrationSeller?ClassType=business">판매회원 가입페이지</a>로 가주세요.</span>
			</p>
			<div class="form_box">
				<fieldset>
					<legend>구매 사업자 등록번호 입력</legend>
	                         <div class="guide_txt" tabindex="0">
	                             <label for="bizNum1">사업자 등록번호<span>"10자리"</span></label>
	                         </div>
					<input type="text" id="bizNum1" name="bizNum1" size="4" maxlength="3" title="사업자번호 첫번째 자리" onblur="CheckBusinessRegistrationNumber1(this, true);" onkeyup="removeChar(event)" />
					<span class="md_txt">-</span>
					<input type="text" id="bizNum2" name="bizNum2" size="3" maxlength="2" title="사업자번호 두번째 자리" onblur="CheckBusinessRegistrationNumber2(this, true);" onkeyup="removeChar(event)" />
					<span class="md_txt">-</span>
					<input type="text" id="bizNum3" name="bizNum3" size="6" maxlength="5" title="사업자번호 세번째 자리" onblur="CheckBusinessRegistrationNumber3(this, true);" onkeyup="removeChar(event)" />							
				</fieldset>
			</div>
			<div class="agree_text">
			<p id="bizMsg" class="ability_chk" style="display:none">필수 정보 입니다.</p>
			<p class="agreeInfo">인증에 문제가 있을 경우, NICE평가정보㈜ 고객센터(02-3771-1011)로 문의 부탁 드립니다.
				<a href="http://www.gmarket.co.kr/challenge/neo_bbs/faq_list.asp?SearchClass_3=1010101&seqno=11296&seqnoView=Y" target="_blank" class="bg_area btn_bg gt_link">자세히보기</a>
			</p>
	                 <p class="agreeInfo"><strong>사업자 번호를 도용하여 가입시, 형사처벌 대상에 해당됩니다.</strong></p>
			</div>
			<p class="btn_zone">
				<a href="#" id="next" class="bg_area btn_bg m1"><span>인증</span></a>
			</p>
		</div>
		<!-- // business -->
	</div>
		<p class="seller_info">
			<strong>G마켓에서 판매를 해보세요!</strong>
			<span>개인, 사업자, 글로벌판매회원 중 선택이 가능합니다.</span>
			<a href="https://sslmember2.gmarket.co.kr/Registration/MemberRegistrationSeller" class="btn_bg sellerJoin"><span>판매회원가입하기</span></a>
		</p>
	<!-- // join_content -->
	</div> 
	<!--// join_container -->
</body>
</html>