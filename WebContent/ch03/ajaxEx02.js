
var xhrObject;
function createXHR(){
	if(window.ActiveXObject){
			xhrObject= new ActiveXObject("Microsoft.XMLHTTP");
	}
	else if(window.XMLHttpRequest){
		xhrObject= new XMLHttpRequest();
	}
}

function startMethod(){
	
	//XMLHttpRequest객체 생성
	createXHR();
	
	//console.log("startMethod()");
	xhrObject.onreadystatechange = resultProcess; 
	
	xhrObject.open("GET", "ajaxEx02.xml", true);
	xhrObject.send(null);
}

function processXML(){
	var xmlDoc = xhrObject.responseXML;
	var subject ="";
	var trTag = "";
	var tdTag ="";
	var subjects = xmlDoc.getElementsByTagName("subject");
	
	for(let i = 0 ; i < subjects.length; i++){
		trTag=document.createElement("tr");
		subject=subjects.item(i);
		var child=subject.childNodes;
		for(let a=0;a<child.length;a++){
			if(child.item(a).nodeType==1){
				arr.push(child.item(a).firstChild.nodeValue);
			}
		}
		for(let j=0;j<arr.length;j++){
			tdTag=document.createElement("td");
			let text=document.createTextNode(arr[j]);
			tdTag.appendChild(text);
			trTag.appendChild(tdTag);
		}
		document.getElementById("resultDisplay").appendChild(trTag);
		arr= new Array();
	}
}

function resultProcess(){
	if(xhrObject.readyState == 4){
		if(xhrObject.status == 200){
			//console.log("success");
			processXML();
		}
	} 
	else{
		//console.log("xhrObject.readyState : "  + xhrObject.readyState )
	}
}
