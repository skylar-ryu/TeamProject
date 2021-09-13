<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>TeamProject Home</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css" >
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
<script>
function setClock() {
	var now = new Date();
	var t = "* Now : "
		+now.getFullYear()+"년"+(now.getMonth()+1)+"월"+now.getDate()+"일_"
		+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds() ;
	document.getElementById("clock").innerHTML=t;	
}
</script>
</head>
<body onload="setClock()">
<h1>사업자 회원 로그인화면</h1>
<span>* Start : ${serverTime}</span><br>
<span id="clock"></span><br>
<c:if test="${loginCno!=null}">
 => ${loginCname} 님 안녕하세요 ~~<br>
</c:if>
<c:if test="${message!=null}">
 => ${message}<br> 
</c:if>
<hr>
<!-- 	<a href="cloginf">로그인</a>&nbsp;&nbsp;
	<a href="cjoinf">회원가입</a>&nbsp;&nbsp;
	<a href="clogout">로그아웃</a>&nbsp;&nbsp;
	<a href="cdelete">회원탈퇴</a>&nbsp;&nbsp;
<hr> -->
<c:if test="${loginCno==null}">
	<a href="cloginf">로그인</a>&nbsp;&nbsp;
	<a href="cjoinf">회원가입</a>&nbsp;&nbsp;
	
</c:if>
<c:if test="${loginCno!=null}">
	<a href="cdetail">MyInfo</a>&nbsp;&nbsp;
	<a href="clogout">로그아웃</a>&nbsp;&nbsp;
	<a href="cdelete">회원탈퇴</a>&nbsp;&nbsp;
</c:if>
<!-- <a href="bcrypt">BCrypt</a><br> -->
<hr>
<a href="comlist">comList</a>&nbsp;
</body>
</html>
