<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>*** Spring Mybatis LoginForm **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script src="resources/myLib/inCheck.js"></script>
 <script>
//1) 전역변수 정의
var bqCheck = false;
$(function(){
// 2) 개별컬럼의 무결성 점검	
	$('#bqpw').focusout(function() {
		bqCheck=bqpwCheck();
	}); //pw_focusout
}); //ready
// 3) submit 처리
// => Error 있으면 : return false
//	        없으면 : return true -> submit 진행
function qpwCheck() {
	if (bqCheck == false) {
		$('#pwMessage').html(' 패스워드를 입력 하세요.');
		return false;
	} else {
		return true;
	}
} //inCheck

</script> 
<style>
	table {
    margin-left:auto; 
    margin-right:auto;
	}
</style>
</head>
<body>
<h2 align="center">비밀번호!!</h2>
<br>
<form action="qnapw" method="post" id="myForm">
<table class="reviewTable" text>
   <tr>
	<td bgcolor="white" align="center"><B>Password</B></td>
	</tr>
	<tr>
		<td><input type="password" name="bqpw" id="bqpw"><br>
		<input type="hidden" name="bqno" id="bqno" value="${bqno}"><br>
			<span id="pwMessage" class="eMessage"></span></td>
	</tr>
	<tr height="50">
		<td align="center"><input type="submit" value="확인" onclick="return qpwCheck()">&nbsp;
			<input type="reset" value="Reset">&nbsp;
		</td>
	</tr>
</table></form>
<c:if test="${message != null}">
	<br>${message}<br><br>	
</c:if>
<br><br>
<div align="center">
<a href="home">HOME</a>
</div>
</body>
</html>