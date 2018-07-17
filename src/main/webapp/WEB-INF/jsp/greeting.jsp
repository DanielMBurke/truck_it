<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<title>Welcome to Truck-It!</title>
</head>
<body>
		<h1>Got a truck? Need a truck?</h1>
	<c:url var="truck" value="/img/truck-itedit.gif" />
	<div class="truckIcon">
		<img src="${truck}" />
	</div>
	<div class="signUp">
		<button><a class="signUp" href="signup">Sign Up!</a></button>
	</div>
	
	<div class="submitReview">
		<button><a class="submitReview" href="inputReview">Submit a review</a></button>
	</div>
	<br>
	<div class="currentReviews">Current Reviews:</div>
	<div class= "reviewSet">
	<c:forEach var="reviews" items="${reviews}">
		<div class="reviewInfo">
		<div class="title">
			<c:out value="${reviews.title}" />
		</div>
		<c:url var="starRating" value="/img/${reviews.rating}-star.png" />
		<div class="starImg">
			<img src="${starRating}" />
		</div>
		<span class=></span>
		<c:out value="Submitted on: ${reviews.dateSubmitted}" />
		<div>
			<c:out value="By ${reviews.username}" />
		</div>
		<div class ="comments">Comments:</div>
		<c:out value="${reviews.text}"></c:out>
		<br>
		</div>
	</c:forEach>
</div>

</body>
</html>

