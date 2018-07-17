<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
<link href="<c:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />		<title>Review your experience! </title>
	</head>
	<body>
	<c:url var="truck" value="/img/truck-itedit.gif" />
	<div class="truckIcon">
		<img src="${truck}" />
	</div>
		<h2>Leave a review!</h2>
<c:url var="formAction" value="/inputReview" />
<form method="POST" action="${formAction}">
	<div class="formInputGroup">
		<label for="rating">Rating: 1 (Poor) - 4 (Stellar) </label> 
		<select name="rating"	id="rating">
			<option value="1">1 Tire</option>
			<option value="2">2 Tires</option>
			<option value="3">3 Tires</option>
			<option value="4">4 Tires</option>
		</select>
	</div>
	<div class="formInputGroup">
		<label for="title">Title your review:</label> 
		<input type="text" name="title" id="title" />
	</div>
	<div class="formInputGroup">
		<label for="text">Comments:</label> 
		<input type="text" name="text" id="text" />
	</div>
	<label for= "submit"></label>
	<input class="formSubmitButton" type="submit" value="Submit your review" />
</form>
<c:url var="formAction" value="/greeting" />
<br>
<form method="GET" action="${formAction}">
<label for="submit"></label>
	<input class="backButton" type="submit" value="Return to Home Screen" />
</form>
</html>
		
