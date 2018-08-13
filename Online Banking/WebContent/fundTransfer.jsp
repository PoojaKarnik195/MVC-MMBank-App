<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Fund Transfer form asking the user to enter sender's, receiver's account numbers along with the amount to be transferred -->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fund Transfer</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h3>Fund Transfer</h3>
		<br> <br>
		<form action="obtainFundTransfer.app" method="get">
			<table>
				<tr>
					<td>Enter Sender's Account Number <input type="text"
						name="sender" value="${requestScope.customers.sender }" /></td>
				</tr>
				<tr>
					<td>Enter Receiver's Account Number <input type="text"
						name="receiver" value="${requestScope.customers.receiver }" /></td>
				</tr>
				<tr>
					<td>Enter Amount to Transfer <input type="text"
						name="amountTransfer"
						value="${requestScope.customers.amountTransfer}" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Tranfer" /></td>
					<br>
					<br>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>