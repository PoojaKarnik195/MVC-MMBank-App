<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- Shows the withdraw details having the balance -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw Result</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h3>Withdraw Details</h3>
		<jstl:if test="${sessionScope.Balance > 0.0 }">
			<h3>Your Available Balance is</h3>${sessionScope.Balance}
</jstl:if>
		<jstl:if test="${sessionScope.Balance == 0.0 }">
			<h3>Sorry, You don't have enough balance in your account</h3>
			<br>
			<br>
		</jstl:if>
	</div>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>