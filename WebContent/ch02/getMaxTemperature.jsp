<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- CSV 양식의 응답 텍스트를 분석해서 화면에 출력하기. -->
<%
	double[] temperature = {
		10.2, 11.8, 12.9, 9.9			
	};
	
	for(int i = 0; i< temperature.length; i++){
		out.print(temperature[i]);
		if( i < temperature.length-1){
			out.print(",");	
		}
	}
%>