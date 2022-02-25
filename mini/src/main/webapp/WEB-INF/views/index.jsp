<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>miniproject_index</title>
<link href='css/jquery.bxslider.min.css' rel='stylesheet' type='text/css'/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	border: 0;
}

a{
  text-decoration: none;
  font-weight: bold;
}

body{
 width: 1250px; 
}

 #logo{
 	margin-left: 450px;
	
 }
 
ul.log li{
	width:80px;
  	height:80px;
  	display: block;
  	float: right;
}
 
#menu{
  background-color: #cccccc;
  padding-left:150px;
}

#menu>ul{
  clear:both;
  padding-bottom:0px; 
  margin-left:120px; 
}

#menu>ul>li{
  display:inline-block;
  margin-right:128px;
}

#menu>ul>li>a{
  font-size: 25px;
}

#popular{
	position:absolute;
	display:inline-block;
	margin-left:375px; 
}

#items img{
	display:inline-block;
	margin-top:550px;
	margin-right: 30px;
	margin-left: 30px;
}

.t1 {
	display:inline-block;
	float:right;
	margin-right: 10px;
}
</style>

</head>
<body>
<c:choose>
	<c:when test="${isLogOn == true  && member!= null}">
		<header>
			<ul>
				<li class="t1">환영합니다. ${member.name }님!</li>
				<li class="t1"><a href="${contextPath}/member/logout.do">로그아웃</a></li>
			</ul>
			<a href="http://localhost:8090main">
			<img id='logo' src="../image/logo2.png" width="350px" height="250px">
			</a>
		</header>
	</c:when>
	
	<c:otherwise>
			<header>
				<ul class="log">
					<li class="signup"><a
						href="http://localhost:8090/member/memberForm.do"> 회원가입 </a></li>
					<li class="singin"><a
						href="http://localhost:8090/member/loginForm.do"> 로그인 </a></li>
				</ul>
				<a href="http://localhost:8090main">
				<img id='logo' src="../image/logo2.png" width="350px" height="250px">
				</a>
			</header>
		</c:otherwise>
</c:choose>
	
	<div id='menu'>
		<ul>
			<li><a href="#">이벤트</a></li>
			<li><a href="member/listItems.do">상품</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="board/listArticles.do">게시판</a></li>
				
		</ul>
	</div>
	
	<div id ='popular'>
		<ul class="bxslider">
			<li><img src="image/food_001.png" /></li>
		</ul>
	</div>
	
	<div id='items'>
		<ul>
			<li>
			<img src="image/item_001.png" width="350px" height="350px"/>
			<img src="image/item_002.png" width="350px" height="350px"/>
			<a href="http://localhost:8090/sub">
			<img src="image/item_003.png" width="350px" height="350px"/>
			</a>
			</li>
		</ul>
	</div>
	
	
</body>
</html>