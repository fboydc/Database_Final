<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addCar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form id="addcarform" action="server/regCar.jsp" method="post" >
		<table id="" align="center" cellpadding="5px">
			<tr>
				<td><label>VIN <span style="color:red">*</span></label></td>
				<td><input id="" type="text" required="required" class="text" name="VIN" size="30" maxlength="30"/></td>
			</tr>
			<tr>
				<td><label>Make<span style="color:red">*</span></label></td>
				<td><input id="" type="text" required="required" class="text" name="make" size="30" maxlength="30"/></td>
			</tr>
			<tr>
				<td><label>Category<span style="color:red">*</span></label></td>
				<td>  <select id="submittype" name="category">
                                        <option value="SUV">SUV</option> 
                                        <option value="sedan">Sedan</option>
										<option value="van">VAN</option>
										<option value="pickup">Pickup</option>
                                    </select>
                                    </td>
			</tr>
			
			<tr>
				<td><label >Model <span style="color:red">*</span></label></td>
				<td><input id="" type="text" placeholder="2004 Lexus RX 330 AWD" required="required" 
					class="text" name="model" size="30" maxlength="30" /></td>
			</tr>
			<tr>
				<td><label >Purchase Date <span style="color:red">*</span></label></td>
				<td><input id="" type="date" name="purchasedate" required="required" class="" size="30" maxlength="16"/></td>
			</tr>
			<tr>
				<td><label >Plate<span style="color:red">*</span></label></td>
				<td><input id="" type="text" name="plate" required="required" class="" size="30" maxlength="16" /></td>
			</tr>
			<!--  
			<tr>
				<td><label >Location<span style="color:red">*</span></label></td>
				<td><input id="" type="text" required="required" class="" size="30" maxlength="16" /></td>
			</tr>
			-->
			
			<tr>
                <td></td>
				<td><input align="left" class="normal-size-button" id="" type="submit" value="Register Car" /></td>
			</tr>
		</table>
	</form>
  </body>
</html>
