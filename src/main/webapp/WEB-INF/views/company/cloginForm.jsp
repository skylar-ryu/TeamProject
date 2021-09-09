<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 사업자 로그인 **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.6.0.min.js"></script>
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/axCompany.js"></script>
<script src="resources/myLib/comIncheck.js"></script>

<script>
// * 로그인을 위한 무결성체크 
var cnoFCheck=false;
var cpwFCheck=false;
$(function(){
	$('#cno').focus();
	$('#cno').focusout(function(){
		cnoFCheck=cnoCheck();		
	}); //cnoCheck
	$('#cpw').focus();
	$('#cpw').focusout(function(){
		cpwFCheck=cpwCheck();		
	});	//cpwCheck
})//ready

function comInCheck() {
	if(cnoCheck==false){
		$('#cnoMessage').html('사업자 번호를 입력하세요');
	}
	if(cpwCheck==false){
		$('#cpwCheck').html('비밀번호를 입력하세요');
	}
	if (cnoCheck && cpwCheck) return true;
	else return false;
}//cnoIncheck

</script>
</head>
<body>
<h2>** 사업자 로그인 **</h2>
<br>
<table><form action="clogin" method="get">
	<tr><td bgcolor="YellowGreen">사업자번호</td>
		<td><input type="text" name="cno" id="cno"><br>
		<span id="cnoMessage" class="eMessage"></span></td>
	</tr>
	<tr><td bgcolor="YellowGreen">비밀번호</td>
		<td><input type="password" name="cpw" id="cpw" value="12345!"><br>
		<span id="cpwMessage" class="eMessage"></span></td>
	</tr>
	<tr height="50"><td></td>
		<td><input type="submit" value="로그인">&nbsp;
			<input type="reset" value="취소">&nbsp;
		</td>
	</tr>
</form></table>
<c:if test="${message != null}">
	<br>${message}<br><br>	
</c:if>
<hr>
<a href="home">HOME</a>
</body>
</html>