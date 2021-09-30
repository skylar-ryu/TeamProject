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
<title>** 사업자 회원가입 **</title>

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
<link rel="stylesheet" href="resources/css/custom.cjoinf.css">
<!-- Favicon-->
<link rel="shortcut icon" href="resources/img/favicon.png">
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

//** 사업자번호 중복 확인하기
function cnoDupCheck() {
	if (cnoFCheck==false) {
		cnoFCheck=cnoCheck();
	}else {
		var url="cnoCheck?cno="+$('#cno').val();
		location.href= url;
	}
} //cnoDupCheck

</script>

<script type="text/javascript">
	bizFlag = false;

	$(document).ready(function () {

	// Trim 함수
	function TrimString(s) {
		var m = s.match(/^\s*(\S+(\s+\S+)*)\s*$/);
		return (m == null) ? "" : m[1];
	}

	//숫자로만 되어있는지 확인1
	function isNumeric(s) {
		for (i = 0; i < s.length; i++) {
			c = s.substr(i, 1);
			if (c < "0" || c > "9") return false;
		}
		return true;
	}

	//숫자로만 되어있는지 확인2
	function passonlynum(inText) {
		var ret;
		for (var i = 0; i < inText.length; i++) {
			ret = inText.charCodeAt(i);
			if (!((ret > 47) && (ret < 58))) {
				return true;
			}
		}
		return false;
	}

	// 사업자회원 가입 체크
	function CheckBusinessInput() {

		if (TrimString(document.getElementById("bizNum1").value).length < 1
			|| TrimString(document.getElementById("bizNum2").value).length < 1
			|| TrimString(document.getElementById("bizNum3").value).length < 1) {
			alert("사업자 등록번호를 넣어주세요.");
			document.getElementById("bizNum1").focus();
			return false;
		}

		var regiNumber = TrimString(document.getElementById("bizNum1").value) + TrimString(document.getElementById("bizNum2").value) + TrimString(document.getElementById("bizNum3").value);

		// 사업자번호 유효성 체크
		if (!CheckValidBusinessRegistrationNumber(regiNumber)) {
			document.getElementById("bizNum1").focus();
			return false;
		}

		return true;
	}

	// 사업자등록번호 체크
	function CheckValidBusinessRegistrationNumber(regiNumber) {
		regiNumber = regiNumber.replace(/ /g, "");

		if (regiNumber == "" || regiNumber == null || regiNumber.length != 10) {
			alert("사업자 등록번호를 넣어주세요.");
			return false;
		}
		var regiNumber1 = regiNumber.substr(0, 3);
		var regiNumber2 = regiNumber.substr(3, 2);
		var regiNumber3 = regiNumber.substr(5, 5);

		// 숫자가 아닌 것을 입력한 경우
		if (!isNumeric(regiNumber1)) {
			alert("사업자 등록번호 첫번째 자리를 숫자로 입력하세요.");
			return false;
		}
		// 길이가 3이 아닌 경우
		if (regiNumber1.length != 3) {
			alert("사업자 등록번호 첫번째 자리 3자를 다시 입력해 주세요.");
			return false;
		}
		// 숫자가 아닌 것을 입력한 경우
		if (!isNumeric(regiNumber2)) {
			alert("사업자 등록번호 두번째 자리를 숫자로 입력하세요.");
			return false;
		}
		// 길이가 2이 아닌 경우
		if (regiNumber2.length != 2) {
			alert("사업자 등록번호 두번째 자리 2자를 다시 입력해 주세요.");
			return false;
		}
		// 숫자가 아닌 것을 입력한 경우
		if (!isNumeric(regiNumber3)) {
			alert("사업자 등록번호 세번째 자리를 숫자로 입력하세요.");
			return false;
		}
		// 길이가 5이 아닌 경우
		if (regiNumber3.length != 5) {
			alert("사업자 등록번호 세번째 자리 5자를 다시 입력해 주세요.");
			return false;
		}
		
		return true;
	}

	/*[숫자값으로만 구성되었는지 검증]*/
	function CheckOnlyNumber(bizNum, disableNullAlert) {
		inputValue = bizNum.value.replace(/ /g, "");
		if (disableNullAlert && inputValue.length == 0) { return false; }
		if (inputValue.replace(/\d/g, "").length != 0) {
			$('#bizMsg').text("숫자만 입력해주세요.");
			$('#bizMsg').show();
			bizNum.value = "";
			bizNum.focus();
			return false;
		}
		$('#bizMsg').text("");
		$('#bizMsg').hide();
		return true;
	}

	/*[사업자등록번호 앞 3자 검증]*/
	function CheckBusinessRegistrationNumber1(bizNum, disableNullAlert) {
		var bizNum1 = $("#bizNum1").val().replace(/ /g, "");

		if (disableNullAlert && bizNum1.length == 0) {
			$('#bizMsg').text("");
			$('#bizMsg').hide();
			return false;
		}

		if (bizNum1.length == 0) {
			$('#bizMsg').text("사업자 등록번호를 넣어주세요.");
			$('#bizMsg').show();
			//$('#bizNum1').val("");
			$('#bizNum1').focus();
			return false;
		}

		if (bizNum1.length != 3) {
			$('#bizMsg').text("사업자 등록번호 앞자리는 3자입니다. 다시 입력해주세요.");
			$('#bizMsg').show();
			//$('#bizNum1').val("");
			$('#bizNum1').focus();
			return false;
		}
		if (CheckOnlyNumber(bizNum, disableNullAlert) == false) return false;

		$('#bizMsg').text("");
		$('#bizMsg').hide();
		return true;
	}

	/*[사업자등록번호 중간 2자 검증]*/
	function CheckBusinessRegistrationNumber2(bizNum, disableNullAlert) {
		inputValue = bizNum.value.replace(/ /g, "");
		if (disableNullAlert && inputValue.length == 0) {
			$('#bizMsg').text("");
			$('#bizMsg').hide();
			return false;
		}

		if (inputValue.length != 2) {
			$('#bizMsg').text("사업자 등록번호 뒷자리는 2자입니다. 다시 입력해주세요.");
			$('#bizMsg').show();
			//bizNum.value = "";
			bizNum.focus();
			return false;
		}
		if (CheckOnlyNumber(bizNum, disableNullAlert) == false) return false;

		$('#bizMsg').text("");
		$('#bizMsg').hide();
		return true;
	}

	/*[사업자등록번호 뒤 5자 검증]*/
	function CheckBusinessRegistrationNumber3(bizNum, disableNullAlert) {
		inputValue = bizNum.value.replace(/ /g, "");
		if (disableNullAlert && inputValue.length == 0) {
			$('#bizMsg').text("");
			$('#bizMsg').hide();
			return false;
		}

		if (inputValue.length != 5) {
			$('#bizMsg').text("사업자 등록번호 뒷자리는 5자입니다. 다시 입력해주세요.");
			$('#bizMsg').show();
			//bizNum.value = "";
			bizNum.focus();
			return false;
		}
		if (CheckOnlyNumber(bizNum, disableNullAlert) == false) return false;

		$('#bizMsg').text("");
		$('#bizMsg').hide();
		return true;
	}

	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");

		if (event.target.value.length == event.target.maxLength) {
			if (event.target.id == "bizNum1") {
				$("#bizNum2").focus();
			} else if (event.target.id == "bizNum2") {
				$("#bizNum3").focus();
			}
		}
		if (event.target.value.length > event.target.maxLength) {
			event.target.value = event.target.value.slice(0, event.target.maxLength);
		}
	}
</script>	

</head>
<body>
<form action="cjoin" method="post" id="join" enctype="multipart/form-data">
<div id="container">
	<div class="join_wrap">
		<div id="join_container">
			<!-- join_header -->
			<div class="join_header">
				<h2 class="bg_area join_bg">회원가입</h2>
				<ol class="join_step">
					<li class="bg_area join_bg step1 now"><span class="blind">현재페이지</span> 가입</li>
					<li class="bg_area join_bg step2">정보입력</li>
					<li class="bg_area join_bg step3">가입완료</li>
				</ol>
			</div>
			<!-- // join_header -->
			<div class="join_content" id="main">
				<div id="basic" class="typebox select">
					<h3 class="bg_area main_bg tit"><a href="#basic"><span class="bg_area main_bg">개인 회원</span></a></h3>
					<div class="wrap_cont">
						<p class="info_txt"> 
							<span class="bg_area main_bg hello">G마켓에 오신 것을 환영합니다.G마켓에 오신 것을 환영합니다.G마켓에 오신 것을 환영합니다.</span>
							<span class="txt">지금 회원 가입하신 후 G마켓의 다양한 서비스를 만나보세요.G마켓의 다양한 서비스를 만나보세요.G마켓의 다양한 서비스를 만나보세요.</span><!-- WPR-973 -->
						</p>
						<div class="btn_zone">
							<a href="joinf" id="simple_regi" class="bg_area btn_bg l1 md"><span>가입하기</span></a>
						</div>
					</div><!-- WPR-973 회원가입수정사항으로 인하여 추가 되었습니다. -->
				</div>
				<!-- // basic -->
				<div id="business" class="typebox">
					<h3 class="bg_area main_bg tit"><a href="#business"><span class="bg_area main_bg">사업자 회원</span></a></h3>
					<p class="info_txt"> 
						<span class="bg_area main_bg hello">G마켓에 오신것을 환영합니다.</span>
						<span>사업자 구매회원 가입 페이지 입니다. <br>판매를 원하시는 분은 판매회원 가입페이지로 가주세요.</span>
					</p>
					<div class="form_box">
						<fieldset>
							<legend>구매 사업자 등록번호 입력</legend>
                            <div class="guide_txt" tabindex="0">
                                <label for="bizNum1">사업자 등록번호<span>"10자리"</span></label>
                            </div>
							<input type="text" id="cnoNum1" name="cnoNum1" size="4" maxlength="3" title="사업자번호 첫번째 자리" onblur="CheckBusinessRegistrationNumber1(this, true);" onkeyup="removeChar(event)" />
							<span class="md_txt">-</span>
							<input type="text" id="cnoNum2" name="cnoNum2" size="3" maxlength="2" title="사업자번호 두번째 자리" onblur="CheckBusinessRegistrationNumber2(this, true);" onkeyup="removeChar(event)" />
							<span class="md_txt">-</span>
							<input type="text" id="cnoNum3" name="cnoNum3" size="6" maxlength="5" title="사업자번호 세번째 자리" onblur="CheckBusinessRegistrationNumber3(this, true);" onkeyup="removeChar(event)" />							
						</fieldset>
					</div>
					<div><br>
						<p class="btn_zone">
							<a href="#" id="cnoDup" onclick="cnoDupCheck()" class="bg_area btn_bg m1"><span>인증</span></a>
						</p>
					</div>
				</div>
				<!-- // business -->
			</div>
			<!-- // join_content -->
		</div> 
		<!--// join_container -->
	</div>
</div>
<!-- //container -->
</form>
</body>
</html>