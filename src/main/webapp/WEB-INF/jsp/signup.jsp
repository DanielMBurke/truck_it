<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Sign-up with"/>
<c:set var="pageHeader" value="Sign up with"/>

<%@include file="common/header.jspf"%>

<c:url var="formAction" value="/signup" />
<form method="POST" action="${formAction}">
	
	<div class="formInputGroup">
		<label for="firstname">First name:</label> 
		<input type="text" name="firstname" id="firstname" />
	</div>
	<div class="formInputGroup">
		<label for="lastname">Last name:</label> 
		<input type="text" name="lastname" id="lastname" />
	</div>
	<div class="formInputGroup">
		<label for="username">Your Truck-It username:</label> 
		<input type="text" name="username" id="username" />
	</div>
	<div class="formInputGroup">
		<label for="usertype">How will you Truck-It?</label> 
		<select name="usertype"	id="usertype">
			<option value="driver">Driver-Only</option>
			<option value="user">User-Only</option>
			<option value="both">Both</option>
		</select>
	</div>
	<div class="formInputGroup">
		<label for="text">Additonal info: (ie. Have a plow, trailer, tow hitch)</label> 
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
<%@include file="common/footer.jspf"%>
		
