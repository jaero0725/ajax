
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
		trTag = document.createElement("tr");
		subject = subjects[i];
		
		var child = subject.childNodes;
		var tmp = subject.children;
		
		//오류 가뜸. 
		console.log("subject : "+subject.tagName);  // Okay
		console.log("subject.firstChild : " + tmp.tagName);
		console.log("child : " + child.tagName);
		
		for(let j = 0; j < child.length; j++){
			tdTag = document.createElement("td");
			
			console.log("Allchild : "+ child[j]);
			console.log("child["+j+"] : "+child[j].childNodes[j]);
			console.log("child["+j+"] : "+child[j].childNodes[j]);
			
			let text = document.createTextNode(child[j].firstChild.nodeValue);
			tdTag.appendChild(text);
			trTag.appendChild(tdTag);
			
			document.getElementById("resultDisplay").appendChild(trTag);
		}
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
