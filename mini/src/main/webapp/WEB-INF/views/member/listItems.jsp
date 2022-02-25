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
<title>상품 정보 출력 창</title>
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

.t1 {
	display:inline-block;
	float:right;
	margin-right: 10px;
}
</style>
</head>
<body>

		<header>

			<a href="http://localhost:8090/main">
			<img id='logo' src="../image/logo2.png" width="350px" height="250px">
			</a>

		</header>

	
	<div id='menu'>
		<ul>
			<li><a href="#">이벤트</a></li>
			<li><a href="#">상품</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">고객센터</a></li>
				
		</ul>
	</div>



<div>
<table border="1"  align="center"  width="100%">
    <tr align="center"   bgcolor="lightgreen">
      <td><b>상품명</b></td>
      <td><b>가격</b></td>
   </tr>
   
 <c:forEach var="item" items="${itemsList}" >     
   <tr align="center">
      <td>${item.name}</td>
      <td>${item.price}</td>
    </tr>
  </c:forEach>   
</table>
</div>


</body>
</html>