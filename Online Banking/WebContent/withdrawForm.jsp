<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Withdraw Form asking the user to enter his account number and amount to withdraw -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw Form</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<h3 align="center">Withdraw Form</h3>
	<form action="calculateWithdraw.app" method="get">
		<div align="center">
			<table>
				<tr>
					<td>Enter Account Number <input type="text"
						name="accountNumber"
						value="${requestScope.customer.accountNumber }" /><br></td>
				</tr>
				<tr>
					<td>Enter Amount <input type="text" name="amount"
						value="${requestScope.customer.amount }" /><br></td>
				</tr>
				<tr>
					<td><input type="submit" value="Withdraw"></td>
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