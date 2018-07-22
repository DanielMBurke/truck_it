<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Welcome to"/>
<c:set var="pageHeader" value="Got a truck? Need a truck?"/>
  
<%@include file="common/header.jspf"%>

	<span class="signUp">
		<button><a class="signUp" href="signup">Sign Up!</a></button>
	</span>
	<span class="submitReview">
		<button><a class="submitReview" href="inputReview">Submit a review</a></button>
	</span>
	<br>
	<h3 class="currentReviews">Current Reviews:</h3>
	<div class= "reviewSet">
	<c:forEach var="reviews" items="${reviews}">
		<div class="reviewInfo">
		<div class="title">
			<c:out value="${reviews.title}" />
		</div>
		<c:url var="starRating" value="/img/${reviews.rating}-star.png" />
		<div class="tireImg">
			<img src="${starRating}" />
		</div>
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

<%@include file="common/footer.jspf"%>


