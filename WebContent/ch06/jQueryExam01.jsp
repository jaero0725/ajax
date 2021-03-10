<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title>jQuery 테스트 페이지</title>
<style type="text/css">
div#displayArea {
	width: 200px;
	height: 200px;
	border: 5px double #6699FF;
}
</style>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("button").click(function() {
			$("#displayArea").html("<img src='ansi_main2s.png' border='0'/>");
		});
	});
	/*
	ready 메서드
	click 메서드
	.html(~ html 값 변경)
	 
	  jQuery 기본 사용법
	  
	① 기본문법
	□ 선택한 엘리먼트에 어떤 동작을 수행
	
	$(selector).action()
	□ $ : jQuery에서 정의 및 접근에 사용
	□ (selector) : HTML 엘리먼트
	□ action() : 해당 엘리먼트에서 수행할 동작
	 
	② 실렉터 - HTML 엘리먼트에 접근
	 □ 엘리먼트를 선택해 작업을 처리하기 위해 사용
	 □ $로 시작해 $()와 같은 형태로 사용.
	 □ ()안에는 엘리먼트명, 엘리먼트의 id속성 값, class속성의 값 등이 올 수 있음
	
	∇ 엘리먼트명 사용 : $("p")
	∇ id속성값 사용: $("#test")    #
	∇ class속성값 사용: $(".t1")   .
	
	③ HTML 엘리먼트의 내용에 접근 - get/set
	 □ 엘리먼트의 내용에 접근하려면 메소드를 사용. 
	 □ text() : 선택한 엘리먼트의 내용을 텍스트형태로 지정하거나 얻어냄.
	 
	 예) $("p").text(); , $("p").text(“작업”);
	 □ html() : 선택한 엘리먼트의 내용을 HTML태그를 포함하여 지정하거나 얻어냄.
	 □ val() : 폼 필드의 값을 지정하거나 얻어냄.
	 
	 
	 */
</script>
</head>
<body>
	<div id="displayArea">이곳의 내용이 변경</div>
	<button>표시</button>
</body>
</html>