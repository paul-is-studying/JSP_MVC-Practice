<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- bookShop.jsp -->
<html>
<head>
	<title>�����ֹ�</title>
</head>
<body>
	<h1 align="center">�� �� �� �� �� �� ��</h1>
	<form name="f" action="book.do" method="post">
		<input type="hidden" name="command" value="ADD"/>
		<b>���� ���� : </b>
		<select name="book">
			<option>�ڹ��� ���� / ���ù� / 30000</option>
			<option>jsp web program / �̱ٿ� / 25000</option>
			<option>spring 4.0 ���α׷��� / �ֹ��� / 30000</option>
			<option>html5+css3 �����α׷��� / ������ / 28000</option>
		</select>
		<b>���� : </b>
		<input type="text" name="qty" size="2" value="1">
		<input type="submit" value="�����ֹ�">
	</form>
	<jsp:include page="cart.jsp"/>
</body>
</html>





