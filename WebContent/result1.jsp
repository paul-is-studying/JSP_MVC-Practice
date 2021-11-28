<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!-- result1.jsp -->
<%
		List<String> list = (List)request.getAttribute("advice");

		for(String str : list){
%>
			<h2><%=str%></h2>	
<%	}%>