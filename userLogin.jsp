<%@page import="db.OracleConnector" %>
<%@page import="java.util.List" 	%>
<%@page import="java.util.Map" 		%>
<%
	String email = request.getParameter("uname");
	String passwd = request.getParameter("passwd");

	OracleConnector con = new OracleConnector();
	String testQuery = "SELECT username from users where username=\'"+email+"\' and password=\'"+passwd+"'";
	List<Map<String, String>> result = con.getRecords(testQuery);
	
	if(!result.isEmpty()){
		session.setAttribute("uname", email);
		out.println("OK");
		out.flush();
	}else{
		out.println("Error");
		out.flush();
	}
%>
