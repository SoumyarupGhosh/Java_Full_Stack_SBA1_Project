<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body onload="myFunction()">

<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->

    <body>
		<h2>Loan Applicatoion Form</h2>
		<form action="si" method="POST" >
			<div>
				<label>Loan Name (Description):     </label>
				<span>   </span>
				<input type="text" name="loanName" required />
			</div>
			<div>
				<label>Loan Application number:     </label>
				<span>   </span>
				<input type="number" name="loanAppNo" required />
			</div>
			<div>
				<label>Loan Amount:     </label>
				<span>   </span>
				<input type="number" name="loanAmount" required />
			</div>
			<div>
				<label>Purpose of taking Loan: </label>
				<input type="text" name="loanPurpose" required />
			</div>
			<div>
				<label>Loan Amount:     </label>
				<span>   </span>
				<input type="number" name="loanAmount" required />
			</div>
			<div>
				<label>Loan Application Date: </label>
				<input type="date" name="disbursementDate" required />
			</div>
			<div>
				<label>Businessstruture (Individual/Organisation): </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<label>Billing Indicator (Salaried person or not): </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<label>Tax indicator (Tax payer or not): </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<label>Address: </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<label>Mobile: </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<label>Email: </label>
				<input type="date" name="dueDate" required />
			</div>
			<div>
				<button>Submit</button>
			</div>
		</form>
	</body>
</script>


</body>
</html>