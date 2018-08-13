<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- A deposit form asking the user to enter his account number and deposit amount -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit Form</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<form action="calculateDeposit.app" method="get">
		<div align="center">
			<h3>Deposit Form</h3>
			<br> <br>
			<table>
				<tr>
					<td>Enter Account Number <input type="text"
						name="accountNumber"
						value="${requestScope.customer1.accountNumber }" /><br></td>
				</tr>
				<tr>
					<td>Enter Deposit Amount <input type="text" name="deposit"
						value="${requestScope.customer1.deposit}" /><br></td>
				</tr>
				<tr>
					<td><input type="submit" value="Deposit"></td>
					<br>
					<br>
				</tr>
			</table>
		</div>
	</form>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>