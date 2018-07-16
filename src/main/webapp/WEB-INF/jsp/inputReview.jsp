<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
<link href="<c:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />		<title>Leave a review! </title>
	</head>
	<body>
	<c:url var="forDummies" value="/img/forDummies.png" />
	<div class="bookCover">
		<img src="${forDummies}" />
	</div>
		<h2>Leave a review!</h2>
<c:url var="formAction" value="/inputReview" />
<form method="POST" action="${formAction}">
	<div class="formInputGroup">
		<label for="username">Your username:</label> 
		<input type="text" name="username" id="username" />
	</div>
	<div class="formInputGroup">
		<label for="rating">Rating:</label> 
		<select name="rating"	id="rating">
			<option value="1">1 Star</option>
			<option value="2">2 Stars</option>
			<option value="3">3 Stars</option>
			<option value="4">4 Stars</option>
			<option value="5">5 Stars</option>	
		</select>
	</div>
	<div class="formInputGroup">
		<label for="title">Title  your for review:</label> 
		<input type="text" name="title" id="title" />
	</div>
	<div class="formInputGroup">
		<label for="text">Review comments:</label> 
		<input type="text" name="text" id="text" />
	</div>
	<label for= "submit"></label>
	<input class="formSubmitButton" type="submit" value="Submit your review" />
</form>

	</body>
</html>
		
