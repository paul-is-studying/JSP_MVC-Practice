<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, shop.*"%>
<!-- result2.jsp -->
<html>
<head>
	<title>�����ֹ��Ϸ�</title>
</head>
<body>
	<div align="center">
		<h1>���� �ֹ� ���� ������</h1>
		<hr color="blue">
		<b>�ֹ��� ���� ǰ��</b>
		<table border="1" width="500">
			<tr bgcolor="yellow">
				<th>��������</th>
				<th>������</th>
				<th>�ܰ�</th>
				<th>����</th>
				<th>����</th>
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
				<td align="right"><%=dto.getPrice()%>��</td>
				<td align="right"><%=dto.getQty()%>��</td>
				<td align="right"><%=df.format(price)%>��</td>
			</tr>			
<%		}%>
			<tr>
				<td colspan="4" align="right">���� �ݾ�</td>
				<td align="right"><b><%=df.format(totalPrice)%></b>��</td>
			</tr>			
		</table>
		
	</div>
</body>
</html>