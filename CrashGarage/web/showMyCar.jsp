<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>

<%
	//HttpSessin session = request.getSession();
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	OracleConnector con = new OracleConnector();
// 	String validuser = (String)session.getAttribute("validUser");
// 	if(validuser == null){
	
// 	}

	String query ="SELECT platenumber,maker,model,image,vin,cartype,purchasedate FROM users natural join cars natural join user_car where username='guojun.blue@gmail.com'";
	
	List<Map<String,String>> result  = con.getRecords(query);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showMyCar.jsp' starting page</title>
    
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
  <%
  	if(result.size() == 0){
   %>
   <h2>You don't have car registered. Please add one!</h2>
   <%
   }else{
	    for(int i =0 ; i < result.size(); i++){
	    %>
	    <table>
	    	<tr >
	    		<td colspan="2"><img src=<%= result.get(i).get("image") %> alt="mycar" /></td>
	    	</tr>
	    	<tr>
	    		<td>Make</td>
	    		<td><%= result.get(i).get("maker") %></td>
	    	</tr>
	    	<tr>
	    		<td>Model</td>
		    	<td><%= result.get(i).get("model") %></td>
		    </tr>
		    <tr>
	    		<td>Type</td>
		    	<td><%= result.get(i).get("cartype") %></td>
		    </tr>
		    
	    	<tr>
				<td>Plate</td>
		    	<td><%= result.get(i).get("platenumber") %></td>
	    	</tr>
	    	<tr>
				<td>VIN</td>
		    	<td><%= result.get(i).get("vin") %></td>
	    	</tr>
	    	<tr>
				<td>Purchase Date</td>
				<% String st = result.get(i).get("purchasedate");
				 	int index = st.indexOf(" ");
				 	String date = st.substring(0, index+1);
					
				%>
		    	<td><%= date %></td>
	    	</tr>
	    
	    </table>
	    <%
	   	}
    }
    %>
  </body>
</html>
