function docker_cmd(){

var i = document.getElementById("in").value;

var xhr = new XMLHttpRequest();

xhr.open("GET", "http://192.168.0.105/cgi-bin/docker.py?x="+i,true);

xhr.send();

xhr.onload = function (){
	var output = xhr.responseText;
	document.getElementById("out").innerHTML = output;
}

}
