/**
 * log 찍어주는 javascript 파일
 */

function log(msg){
	var console = document.getElementById("debugConsole");
	if(console!= null){
		console.innerHTML += msg + "<br>";
	}
}