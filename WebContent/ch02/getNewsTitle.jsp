<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String [] titles = {
			"속보 : 뭐먹지?",
			"칼국수, 햄버거, 제육볶음",
			"돈까스, 순대국, 설렁탕, 이삭토스트, 편의점"
	};
	for(int i = 0 ; i< titles.length; i++){%>
		<% if(i == 0 ){%> <strong><%} %>
			<%= titles[i] %> 
		<% if(i == 0 ){ %></strong><%} %>
	<br> 
	<%}%>