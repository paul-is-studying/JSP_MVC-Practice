<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, shop.*"%>
<!-- result2.jsp -->
<html>
<head>
	<title>도서주문완료</title>
</head>
<body>
	<div align="center">
		<h1>도서 주문 구매 페이지</h1>
		<hr color="blue">
		<b>주문한 도서 품목</b>
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th>도서제목</th>
				<th>지은이</th>
				<th>단가</th>
				<th>수량</th>
				<th>가격</th>
			</tr>
<%		Hashtable<String, BookDTO> ht = 
									(Hashtable)request.getAttribute("result");
			java.text.DecimalFormat df = new java.text.DecimalFormat("###,###");
			int totalPrice = 0;
			Enumeration<String> enu = ht.keys();
			while(enu.hasMoreElements()){
				String title = enu.nextElement();
				BookDTO dto = ht.get(title);
				int price = dto.getPrice() * dto.getQty();
				totalPrice += price;%>
			<tr>
				<td align="center"><%=dto.getTitle()%></td>
				<td align="center"><%=dto.getAuthor()%></td>
				<td align="right"><%=dto.getPrice()%>원</td>
				<td align="right"><%=dto.getQty()%>권</td>
				<td align="right"><%=df.format(price)%>원</td>
			</tr>			
<%		}%>
			<tr>
				<td colspan="4" align="right">결재 금액</td>
				<td align="right"><b><%=df.format(totalPrice)%></b>원</td>
			</tr>			
		</table>
		
	</div>
</body>
</html>