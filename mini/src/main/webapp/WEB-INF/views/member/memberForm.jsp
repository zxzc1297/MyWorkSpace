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
<title>회원 가입창</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
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

.login #name {
	width: 500px;
	height: 50px;
	left: 20px;
	border: 1px solid black;
	border-radius: 6px;
	margin-left: 375px;
	margin-bottom: 50px;
	float:left;
}

.login #email {
	width: 500px;
	height: 50px;
	left: 20px;
	border: 1px solid black;
	border-radius: 6px;
	margin-left: 375px;
	margin-bottom: 50px;
	float:left;
}

input{
	font-size:20px;
}

input::placeholder{
	font-size:15px;
	font-style:italic;
}

#signbtn {
	margin-left:375px;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function(){
		$('#signbtn').click(function(){
			var nid=$('#id').val();
			var npassword=$('#password').val();
			var nname=$('#name').val();
			var nemail=$('#email').val();
			
			var idpattern=/^(?=.*[a-zA-Z])[a-zA-Z$_]{1,1}[a-zA-Z0-9!@#$%^&_*]{4,15}$/;
			var passpattern= /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&_*])[a-zA-Z0-9!@#$%^&_*]{7,20}$/i;			
			var namepattern = /^(?=.*[ㄱ-ㅎㅏ-ㅣ가-힣])[ㄱ-ㅎㅏ-ㅣ가-힣]{1,6}$/;
			var emailpattern = /^(?=.*[a-zA-Z])[a-zA-Z$_]{1,1}[a-zA-Z0-9!@#$%^&_*]{1,30}$/;
			
			
			
			 if(!(idpattern.test(nid))){
			   alert('아이디를 확인하세요');
			   return false;
			 } 	
			 
			 if(!(passpattern.test(npassword))){
				 alert('비밀번호를 확인하세요');
				  return false;
			 }
			 
			 if(!(namepattern.test(nname))){
				 alert('이름을 확인하세요');
				  return false;
			 }
			 
			 if(!(emailpattern.test(nemail))){
				 alert('이메일을 확인하세요');
				  return false;
			 }
				    	  
			$('form').prop('action','${contextPath}/member/addMember.do');
			$('form').submit(); 
			return true;
		});
	
	});
</script>
</head>
<body>
	<form method="post"   action="${contextPath}/member/addMember.do">
	<header>
		<a href="http://localhost:8090/main">
			<img id='logo' src="../image/logo2.png" width="500px" height="400px" >
		</a>
	</header>
	<div class ='login'>
			<input type="text" id="id" name="id" 
			tabindex="1" title="아이디입력" placeholder="아이디는 4자리 이상 영문자,숫자,특수문자로 설정해주세요"/>
			<input type="text" id="password" name="pwd" 
			tabindex="2" title="비밀번호입력"placeholder="패스워드는 7자리 이상 영문자,숫자,특수문자로 설정해주세요"/>
			<input type="text" id="name" name="name" 
			tabindex="3" title="이름입력" placeholder="이름"/> 
			<input type="text" id="email" name="email" 
			tabindex="4" title="이메일입력" placeholder="이메일"/>  
		</div>
	
		<span>
		
		<input type="image" id="signbtn" src="../image/signbtn.png" width="500px" height="80px"
		tabindex="5" />
		
		</span>
	</form>
</body>
