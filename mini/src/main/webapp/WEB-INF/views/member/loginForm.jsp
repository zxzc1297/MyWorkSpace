<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
<title>로그인창</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	border: 0;
}

body{
 width: 1250px; 
}

header{
	margin-left: 375px;
}

div{
	margin:0;
	padding: 0;
	border: 0;
}

span{
	margin-left:375px;
}

span>a{
	width: 200px;
	top: 70px;
	border: 1px solid black
}



.login #id {
	width: 500px;
	height: 50px;
	left: 20px;
	border: 1px solid black;
	border-radius: 6px;
	margin-left: 375px;
	margin-bottom: 50px;
	float:left;
}

.login #password {
	width: 500px;
	height: 50px;
	left: 20px;
	border: 1px solid black;
	border-radius: 6px;
	margin-left: 375px;
	margin-bottom: 50px;
	float:left;
}

span>a {
	margin: 0;
	padding: 0;
	border: 0;
}

#signbtn {
	margin-left:60px;
}

input{
	font-size:20px;
}

input::placeholder{
	font-size:20px;
	font-style:italic;
}

</style>

</head>



<body>
	<form name="frmLogin" method="post"  action="${contextPath}/member/login.do">
   <header>
		<a href="http://localhost:8090/main">
			<img id='logo' src="../image/logo2.png" width="500px" height="500px" >
		</a>
	</header>
	
	
	<div class ='login'>
		<input type="text" id="id" name="id" value=""
		tabindex="1" title="아이디입력" placeholder="ID"/>
		<input type="password" id="password" name="pwd" value=""
		tabindex="2" title="비밀번호입력" placeholder="PASSWORD"/> 
	</div>
	
	<span>
		<input type="image" id="logbtn" src="../image/logbtn.png" width="220px" height="50px"
		 tabindex="3" /> 
		<a href="http://localhost:8090/member/memberForm.do">
		<img id='signbtn' src ="../image/signbtn.png" width="220px" height="50px">
		</a>
	</span>
	</form>

</body>
</html>
