function cnoCheck(){
	var cno=$('#cno').val();
	if (cno.length<10) {
		$('#cnoMessage').html(' ~~ 사업자번호는 10자 입니다 ~~');
		return false;
	}else if (id.replace(/[a-z.0-9]/gi,'').length > 0) {
		$('#iMessage').html(' ~~ id 는 영문자, 숫자로만 입력 하세요 ~~');
		return false;
	}else {
		$('#iMessage').html('');
		return true;
	}
} //cnoCheck

function cpwCheck(){
	var cpw=$('#cpw').val();
	if (cpw.length<10) {
		$('#cnoMessage').html(' ~~ 사업자번호는 10자 입니다 ~~');
		return false;
	}else if (id.replace(/[a-z.0-9]/gi,'').length > 0) {
		$('#iMessage').html(' ~~ id 는 영문자, 숫자로만 입력 하세요 ~~');
		return false;
	}else {
		$('#iMessage').html('');
		return true;
	}
} //cnoCheck