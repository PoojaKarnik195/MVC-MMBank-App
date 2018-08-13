<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- Deposit Result having details of balance -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Result</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h3>Deposit Details</h3>
		<jstl:if test="${sessionScope.Balance2 >= 0.0 }">
			<h3>Your Available Balance is</h3>${sessionScope.Balance2}<br>
			<br>
		</jstl:if>
	</div>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>