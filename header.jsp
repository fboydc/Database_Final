<div>
<div class="header">
<!--<div align="right">	-->
<table align="right">
	<td>
		<img src="images/facebook.png"/> 
	</td>
	<td>
		<img src="images/twitter.png" />
	</td>
	<td>
		<img src="images/google.png" />
	</td>
</table>
</div>
<div class="header-banner">
	<h1 class="title">CRASH GARAGE</h1>
</div>

<div class="topmenu">
	<%@include file="topmenuitems.jsp"%>
</div>
</div>
<div class="login" id="login">
		<fieldset style="text-align:left;">
		   <legend><b class="title">Welcome to Crash Garage</b></legend>
		   <form id="myform" name="loginForm" class="title" onsubmit="return checkLoginInput();">
		      Username: <input type="text" id="uname" name="uname"><br>
		      Password: <input type="password" id="passwd" name="passwd"><br>
			  <input type="submit" value="submit">
			  <input type="reset" value="clear input">
		   </form>
		   	
		   	<div align="center">
			   <a class="title" href="javascript:void(0);" onclick="showRegisterPage();">New User?</a>
			 </div>
		</fieldset>
</div>