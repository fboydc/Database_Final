function getX(){
		return event.clientX;
}
function getY(){
	return event.clientY;
}


function popup(thisID) {
       
	   document.getElementById(thisID).style.visibility = 'visible';
   }
   
 function popup_login(){
	//document.write(getX());
	document.getElementById("login").style.top =(getY() + 6)+"px";
	document.getElementById("login").style.left = (getX() - 150)+"px";
	popup('login');
 }
   
