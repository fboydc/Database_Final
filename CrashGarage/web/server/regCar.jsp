<jsp:useBean id="car" class="car.Cardata" scope="session"/>
<jsp:setProperty property="*" name="car"/>
<%@ page import="db.OracleConnector"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>

<%
	//get valid user first 
	/*
	String vin = request.getParameter("VIN");
	String make = request.getParameter("make");
	String category = request.getParameter("category");
	String model = request.getParameter("model");
	String purchasedate = request.getParameter("purchasedate");
	String plate = request.getParameter("plate");
	*/
	
	String plate = car.getPlate();
	String make = car.getMake();
	String model = car.getModel();
	//image here should be
	String VIN = car.getVIN();
	String category = car.getCategory();
	String purchasedate = car.getPurchasedate();
	String query = "INSERT INTO cars VALUES('"+plate+"','"+make+"','"+model+"',"+"''"+",'"+VIN+"','"+category+"',"+"TO_DATE('"+purchasedate+"','YYYY-MM-DD'))";
	String query1 = "INSERT INTO user_car VALUES("+"'guojun.blue@gmail.com'"+",'"+plate+"')";
	OracleConnector con = new OracleConnector();
	con.insertUpdateRecord(query);
	con.insertUpdateRecord(query1);
	
	response.sendRedirect("../showMyCar.jsp");
 %>

