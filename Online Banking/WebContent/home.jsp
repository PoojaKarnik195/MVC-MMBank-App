<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Home Page having the operations of banking -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h2>
			<br>Home Page
		</h2>
		<a href="addnew.app">Add New Account</a> <br> <br> <a
			href="viewall.app">View All Accounts</a> <br> <br> <a
			href="search.app">Search</a> <br> <br> <a
			href="withdraw.app">Withdraw</a> <br> <br> <a
			href="deposit.app">Deposit</a> <br> <br> <a
			href="fundTransfer.app">Fund Transfer</a><br>
		<br>
	</div>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>