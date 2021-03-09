<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
//전역 변수 
 String [] keywords = {
		 "AJAX",
		 "AJAX 실전 프로그래밍",
		 "자바",
		 "자바 프로그래밍",
		 "자바 서버페이지",
		 "자바 스터디",
		 "자바서비스",
		 "자바캔"
 };

//메서드
public List <String> search(String keyword){
	if(keyword == null || keywords.equals("")){
		return java.util.Collections.EMPTY_LIST;
	}
	keyword = keyword.toUpperCase();
	List result = new java.util.ArrayList<String>(8);
	for(int i = 0 ; i<keywords.length; i++){
		if(((String)keywords[i]).startsWith(keyword)){
			result.add(keywords[i]);
		}
	}
	return result;
}

%>

<% 
	request.setCharacterEncoding("utf-8");
	String keyword = request.getParameter("keyword");
	System.out.println("keyword " +keyword);
	List <String> keywordList = search(keyword);
	out.print(keywordList.size()); //제시어 갯수 출력
	out.print("|");
	for(int i = 0 ; i< keywordList.size(); i++){
		String key= (String)keywordList.get(i);
		out.print(key);
		if(i < keywordList.size() -1){
			out.print(",");
		}
	}
%>
