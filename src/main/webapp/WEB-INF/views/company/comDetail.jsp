<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 사업자 정보 보기 **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
</head>
<body>
<h2>** 사업자 정보 보기 **</h2>
<table>
	<tr height="40">
		<td bgcolor="Lavender">사업자번호</td><td>${Apple.cno}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">비밀번호</td><td>${Apple.cpw}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">사업자명</td><td>${Apple.cname}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">카테고리</td><td>${Apple.ctype}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">상세내용</td><td>${Apple.cinfo}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">주소</td><td>${Apple.caddr}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">휴무일</td><td>${Apple.cdate}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">이벤트기간</td><td>${Apple.cdate_s}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">이벤트기간</td><td>${Apple.cdate_e}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">영업시간</td><td>${Apple.period_s}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">영업시간</td><td>${Apple.period_e}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">이미지</td><td>${Apple.cimage}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">전화번호</td><td>${Apple.ctel}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">입장료</td><td>${Apple.cprice}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">홈페이지</td><td>${Apple.csite}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">주차</td><td>${Apple.cpark}</td>
	</tr>
	<tr height="40">
		<td bgcolor="Lavender">Image</td>
		<td><img src="${Apple.comUploadfile}" width="200" height="200"></td>
	</tr>
</table>
<hr>
<a href="cdetail?id=${Apple.cno}&jcode=U">내정보수정</a>&nbsp;&nbsp;
<!-- ** 내정보수정
		=> 내정보를 표시하는 폼이 출력 (mdetail) -> 수정후, 수정버튼 -> 수정 서블릿 
-->
<a href="cdelete?id=${Apple.cno}">회원탈퇴</a>
	<!-- 관리자가 삭제하는 경우 id 가 필요함 -->
<hr>
<a href="home">HOME</a>
</body>
</html>