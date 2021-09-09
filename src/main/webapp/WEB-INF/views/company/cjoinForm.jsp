<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 사업자 회원가입 **</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
</head>
<body>
<h2>** 사업자 회원가입 **</h2>
<form action="join" method="post" id="myForm" enctype="multipart/form-data">
<table>
  <tr height="40"><td bgcolor="LightGreen ">사업자번호</td>
      <td><input type="text" name="cno" id="cno" size="10"><br>
  </tr>
    <tr height="40"><td bgcolor="LightGreen ">비밀번호</td>
      <td><input type="password" name="cpw" id="cpw" size="10"><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen ">사업장명</td>
      <td><input type="text" name="cname" id="cname" size="10"><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen">카테고리</td>
  	<td><select name="ctyoe" id="ctype">
		  	<option value="G" selected="selected">선택해주세요</option>
			<option value="A">맛집</option>
			<option value="B">도서관</option>
			<option value="C">카페</option>
			<option value="D">팝업스토어</option>
			<option value="E">전시</option>
			<option value="F">축제</option>
	    </select></td>
  </tr>
  <tr height="40"><td bgcolor="LightGreen" >상세 설명</td>
		<td><textarea name="cinfo" rows="10" cols="40"></textarea></td>
	</tr>
  <tr height="40"><td bgcolor="LightGreen">위치 및 주소</td>
      <td><input type="text" name="caddr" id="caddr" size="30"><br>
  </tr>
   </tr>
  <tr height="40"><td bgcolor="LightGreen">행사기간 및 휴무일</td>
	<td><input type="date" name="cdate" id="cdate" ><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen">이용시간</td>
  	  <td><input type="datetim" name="period" id="period" value="" size="10"><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen">전화번호</td>
  	  <td><input type="text" name="ctel" id="ctel" value="" size="10"><br>
  </tr>
   <tr height="40"><td bgcolor="LightGreen">입장료</td>
  	  <td><input type="text" name="cprice" id="cprice" value="" size="10"><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen">홈페이지</td>
  	  <td><input type="text" name="csite" id="csite" value="" size="10"><br>
  </tr>
   <tr height="40"><td bgcolor="LightGreen">주차여부</td>
  	  <td><select name="cpark" id="cpark">
  	  		<option value="Y" selected="selected">가능</option>
  	  		<option value="N">불가능</option>  	  		
  	  </select><br>
  </tr>
  <tr height="40"><td bgcolor="LightGreen">사진</td>
  	  <td>
  	  <img src="" class="select_img"><br>
  	  <input type="file" name="cimagef" id="cimagef">
  	  <script>
			$('#cimagef').change(function(){
				if(this.files && this.files[0]) {
					var reader = new FileReader;
			 			reader.onload = function(e) {
		 				$(".select_img").attr("src", e.target.result)
		 					.width(100).height(100); 
		 				} // onload_function
		 				reader.readAsDataURL(this.files[0]);
		 		} // if
			}); // change	
  		</script>  
  		</td>
  </tr>
  <tr height="40"><td></td>
	  <td><input type="submit" value="가입" onclick="return inCheck()" disabled id="submit">&nbsp;&nbsp;
		  <input type="reset" value="취소">&nbsp;&nbsp;
  </tr> 
</table></form>

<c:if test="${message != null}">
	<br>${message}<br><br>	
</c:if>
<hr>
<a href="home">HOME</a>
</body>
</html>