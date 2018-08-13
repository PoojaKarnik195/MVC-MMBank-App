<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<%@ page import="com.cg.pojo.CustomerDetails"%>
<!DOCTYPE html>
<!-- Fund transfer details having the current date and time of transaction -->
<html>
<head>
<%
	CustomerDetails customer = (CustomerDetails) request.getAttribute("CustomerDetails");
%>
<meta charset="ISO-8859-1">
<title>Fund Transfer Result</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h3>Fund Transfer Details</h3>
		<br>
		<br>
		<h3>Fund Transferred Successfully!!!</h3>
		<br>
		<h4 align="center">
			Sender's Account Number
			<%=customer.getSender()%><br> Receiver's Account Number
			<%=customer.getReceiver()%><br> Amount to Transfer
			<%=customer.getAmountTransfer()%><br>
			<br> Date and Time of Transaction
		</h4>

		<%
			Date date = new Date();
			out.print("<h2 align=\"center\">" + date.toString() + "</h2>");
		%><br><br>
	</div>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>