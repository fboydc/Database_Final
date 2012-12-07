<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String address1 = "";
	String address2 = "";
	String city = "";
	String country = "";
	String phone = "";
	String queryString = request.getQueryString();
	if(!queryString.equals(""))
	{
		
	}
	else
	{
		String sql = "select * from address";
		OracleConnector con = new OracleConnector();
		List<Map<String,String>> results = con.getRecords(sql);
		
		if(results.size() > 0)
		{
			Map<String,String> target = results.get(0);
			
			address1 = target.get("ADDRESS1");
			address2 = target.get("ADDRESS2");
			city = target.get("CITY");
			country = target.get("COUNTRY");
			phone = target.get("PHONE");
		}
	}
%>
<div>
	<table>
		<tr>
			<td>Address Line1:</td>
			<td><input type="text" width="300" value="<%= address1 %>" /></td>
		</tr>
		<tr>
			<td>Address Line2:</td>
			<td><input type="text" width="300" value="<%= address2 %>" /></td>
		</tr>
		<tr>
			<td>Town/City:</td>
			<td><input type="text" width="150" value="<%= city %>" /></td>
		</tr>
		<tr>
			<td>Country</td>
			<td><input type="text" width="100" value="<%= country %>" /></td>
		</tr>
		<tr>
			<td>Phone Number:</td>
			<td><input type="text" width="100" value="<%= phone %>" /></td>
		</tr>
	</table>
</div>
</body>
</html>