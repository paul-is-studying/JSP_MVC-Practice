<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, shop.*"%>
<!-- cart.jsp -->
<%
		List<BookDTO> list = (List)session.getAttribute("cart");
		if (list != null && list.size() != 0){
%>
<hr color="red" border="2">
<table border="1">
	<tr>
		<th>������</th>
		<th>������</th>
		<th>�ǸŰ�</th>
		<th>����</th>
	</tr>
<%	for(int i=0; i<list.size(); ++i){
			BookDTO dto = list.get(i);%>
	<tr>
		<td><%=dto.getTitle()%></td>
		<td><%=dto.getAuthor()%></td>
		<td><%=dto.getPrice()%></td>
		<td><%=dto.getQty()%></td>
		<td>
				<form name="f" action="book.do" method="post">
					<input type="hidden" name="command" value="DEL"/>
					<input type="hidden" name="idx" value="<%=i%>"/>
					<input type="submit" value="����">
				</form>
		</td>
	</tr>	
<%	}%>	
</table>
<form name="f" action="book.do" method="post">
	<input type="hidden" name="command" value="CHK"/>
	<input type="submit" value="�����ֹ��Ϸ�">
</form>
<%
		}//end if
%>



