<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book your Flight</title>
</head>
<body>
	<h1>Enter Payment Details</h1>
	<form name="paymentDetails" method="POST" action="UserData.jsp">	
		First Name On Card : <input type="text" name="firstname" placeholder="John" required> <br/>
		Last Name On Card : <input type="text" name="lastname" placeholder="Smith" required> <br/>
		Card Number: <input type="text" name="cardnumber" placeholder="1234 1234 4321 9123" required> <br/>
		Expiration (yyyy-MM-dd) : <input type="date" name="expiration" placeholder="2027-10-31"  required> <br/>
		Security Code : <input type="number" name="securitycode" placeholder="987" required> <br/>
		<br/>
		<button>submit</button>
	</form>
</body>
</html>