<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- bookShop.jsp -->
<html>
<head>
	<title>도서주문</title>
</head>
<body>
	<h1 align="center">도 서 주 문 페 이 지</h1>
	<form name="f" action="book.do" method="post">
		<input type="hidden" name="command" value="ADD"/>
		<b>도서 선택 : </b>
		<select name="book">
			<option>자바의 정석 / 남궁민 / 30000</option>
			<option>jsp web program / 이근왕 / 25000</option>
			<option>spring 4.0 프로그래밍 / 최범균 / 30000</option>
			<option>html5+css3 웹프로그래밍 / 이지스 / 28000</option>
		</select>
		<b>수량 : </b>
		<input type="text" name="qty" size="2" value="1">
		<input type="submit" value="도서주문">
	</form>
	<jsp:include page="cart.jsp"/>
</body>
</html>





