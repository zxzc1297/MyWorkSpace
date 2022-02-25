<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>miniproject_sub</title>
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

#item{
	width: 550px;
	margin-top : 50px;
	margin-left: 25px;
	float: left;
	
}

#info{
	width: 550px;
	height: 450px;
	margin-top : 50px;
	margin-left : 120px;
	float: right;
}

#icon{
	width: 550px;
	height: 60px;
	margin-top : 50px;
	margin-left : 120px;
	float: right;
}

#buy{
	float:left;
}

#basket{
	float:right;
}

#name {
	width: 500px;
	height: 20px;
	float: left;
	margin-left :20px;
	margin-bottom: 10px;
	margin-top: 10px;
	margin-right: 30px;
	font-size : 20px;
	font-weight: bold;
	clear:both;
}

#price{
	width: 530px;
	float: right;
	margin-right: 20px;
	margin-bottom: 20px;
	font-weight: bold;
	text-align: right;
	clear:both;
}

#species{
	width: 150px;
	margin: 10px;
	float: left;
}

#sort{
	border: 1px solid black;
	height: 20px;
}

#result{
	width : 150px;
	height: 20px;
	font-weight: bold;
	text-align: right;
	margin: 10px;
	float:right;
}


#btn{
	width:180px;
	float:right;
	margin: 10px;
}

#pbtn {
	width:40px;
	height:20px;
	background-color: #cccccc;
	border: none;
	color:black;
	text-align: center;
	text-decoration: none;
	font-size: 20px;
	margin: 4px;
	cursor: pointer;
	float: right;
}

#mbtn {
	width:40px;
	height:20px;
	background-color: #cccccc;
	border: none;
	color:black;
	text-align: center;
	text-decoration: none;
	font-size: 20px;
	margin: 4px;
	cursor: pointer;
	float: right;
}

#total{
	width:400px;
	text-align:right;
	float : left;
	margin-left: 20px;
	clear:both;
	margin-top:4px;
	margin-bottom:10px;
}

#add{
	width:100px;
	height:20px;
	background-color: #cccccc;
	border: none;
	color:black;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	float: right;
	margin-bottom: 10px;
}

#amount{
	width:540px;
	margin-right:10px;
	text-align: right;
	clear:both;
}

#sel{
 width:530px;
 margin: 10px;
}

#totalprice{
	width:540px;
	margin-right:10px;
	text-align: right;
	clear:both;
}
</style>

<script type="text/javascript">
	function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  const resultPrice = document.getElementById('total');
	  const resultSelect = document.getElementById('sort');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  if(number <0){
		  alert("0이하는 선택하실 수 없습니다.")
		  return number == 0;
	  } else if(resultSelect.options[resultSelect.selectedIndex].text == "선택없음"){
		  alert("종류를 선택하셔야 합니다.")
		  return number == 0;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number+"개";
	  
	  totalp = number*2700;
	  
	  resultPrice.innerText = totalp+"원";
	}

</script>

<script>
	$(document).ready(function(){
		totalm = 0;
		totala = 0;
		$('#add').click(function(){
			const resultElement = document.getElementById('result');
			const resultPrice = document.getElementById('total');
			const resultSelect = document.getElementById('sort');
			const resultAmount = document.getElementById('amount');
			const resultTotalprice = document.getElementById('totalprice');
			
			let number = resultElement.innerText;
			let tot = resultPrice.innerText;
				
			var list = '<tr><td>' + resultSelect.options[resultSelect.selectedIndex].text
			+'</td>'+'<td>'+ number+ '</td>'+ '<td>' + tot + '</td>';
			
			
			list += '<td><button type="button" class="btnDel">X</button>';
			list += '</td></tr>';
			
			$("#sel").append(list); 
			
			pr = parseInt(resultPrice.innerText);
			am = parseInt(number);
			
			totalm += pr;
			
			totala += am;
			
			resultAmount.innerText = "총 수량" + totala + "개";
			resultTotalprice.innerText = "총 가격" + totalm +"원";
		})
		
		$("#sel").on("click", ".btnDel", function() { 
		    $(this).parent().parent().remove(); 
		    
		    const resultAmount = document.getElementById('amount');
		    const resultTotalprice = document.getElementById('totalprice');
		    
		    var str = ""
	        var tdArr = new Array();    // 배열 선언
	        var checkBtn = $(this);
	        
	        var tr = checkBtn.parent().parent();
	        var td = tr.children();
	        
	        i = td.eq(1).text();
	        j = td.eq(2).text();
	        console.log(i);
		    
		   	totalm -= parseInt(j);
		    console.log(totalm);
			totala -= parseInt(i);
			console.log(totala);

		    
			resultAmount.innerText = "총 수량" + totala + "개";
			resultTotalprice.innerText = "총 가격" + totalm +"원";
		 }); 
		
		$("#buy").click(function(){
			if(totalm == 0){
				alert("최소 1개 이상 선택하셔야합니다.")
			} else{
				alert("총 가격은 " + totalm + "원입니다.")
			}
		});
		
		$("#basket").click(function(){
			if(totalm == 0){
				alert("최소 1개 이상 선택하셔야합니다.")
			} else{
				alert("장바구니에 담겼습니다.")
			}
		});
	});
</script>

</head>
<body>
	<header>

		<a href="http://localhost:8090/main">
			<img id='logo' src="image/logo2.png" width="350px" height="250px" >
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
	
	<div id = 'item'>
		<img id ='item_1' src="image/item_003.png" width="550px" height="550px">
	</div>
	
	<div id ='info'>
		<div id ='name'>
			냉동 볶음밥 도시락 골라담기 6종
		</div>
		
		<div id ='price'>
			2700원
		</div>
		
		<div id ='species'>
			<select id ='sort'>
				<option>선택없음</option>
				<option>김치볶음밥,불고기</option>
				<option>볶음김치,완자</option>
				<option>버섯볶음밥,완자</option>
				<option>불고기,완자</option>
				<option>완자,계란말이</option>
				<option>오므라이스,완자</option>
			</select>
		</div>
		<br>
		
		<div id='result'>0개</div>
		
		<div id='btn'>
		<input type='button' id = 'mbtn' onclick='count("minus")' value='-'/>
		<input type='button' id = 'pbtn' onclick='count("plus")' value='+'/>
		</div>
		
		<br>
		<div id ='total'>0원</div>
		
		<input id ='add' type='button' value="추가하기">
		
		<table id ='sel'>
		</table>
		
		<div id='amount'>총 수량 0개</div>
		
		<div id='totalprice'>총 가격 0원</div>
		
	</div>
	
	<div id= 'icon'>
		<div>
			<a href ="#">
				<img id ='buy' src="image/buy.png" width="250px" height = 60px;>
			</a>
		</div>
	
		<div>
			<a href ="#">
				<img id ='basket' src="image/basket.png" width="250px" height = 60px;>
			</a>
		</div>
		
	</div>
</body>
</html>