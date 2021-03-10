<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>
<script type="text/javascript" src="ajax.js"></script> 
<script>
//변수 정의
var xmlDoc = null; // 서버에서 읽어온 XML 문서를 저장
var xslDoc = null; // 서버에서 읽어온 XSL 문서를 저장

function loadBooks(){
	new ajax.xhr.Request("books.jsp", null, loadedBooksXML,"GET");
	new ajax.xhr.Request("books.xsl", null, loadedBooksXSL,"GET");
}


function loadedBooksXML(req){
	if(req.readyState == 4){
		if(req.status == 200){
			xmlDoc = req.responseXML;
			doXSLT();
		}
	}
}
function loadedBooksXSL(req){
	if(req.readyState == 4){
		if(req.status == 200){
			xslDoc = req.responseXML;
			doXSLT();
		}
	}
}

function doXSLT(){
	//없는 경우 처리
	if(xmlDoc == null || xslDoc == null) return;
	
	var bookList = document.getElementById("bookList");
	//IE인 경우 처리
	if(window.ActiveXObject){
		bookList.innerHTML = xmlDoc.transformNode(xslDoc); 
	} 
	//기타 브라우저 처리
	else{
		var xsltProc = new XSLTProcessor();
		xsltProc.importStylesheet(xslDoc);
		var fragment = xsltProc.transformToFragment(xmlDoc, document);
		bookList.appendChild(fragment);
	}
}


window.onload = function(){
	loadBooks();
}

</script>
</head>
<body>
	<h1>신규 책 목록</h1>
	<div id="bookList">
	</div>
</body>
</html>