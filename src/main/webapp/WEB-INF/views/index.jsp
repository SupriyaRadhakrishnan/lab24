<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="/vote">Options&Votes</a>
	<a href="/review">Review Options</a>
	<a href="/admin">Admin</a>
	<h1>Parties</h1>
	<form method="post" action="/">
		<label for="party">Search Party</label> <input type="text"
			name="party" id="party"> <input type="submit" value="Search" />
	</form>
	<c:choose>
		<c:when test="${fn:length(parties)>0}">
			<table>
				<thead>
					<tr>
						<th><b>Event</b></th>
						<th><b>Date</b></th>
						<th><b></b></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="party" items="${parties}">
						<tr>
							<td>${party.getName()}</td>
							<td><fmt:formatDate type="both" value="${party.getPdate()}" /></td>
							<td><a href="/details?id=${party.getId()}">See Details</a></td>
						</tr>
						<tr>					
						<td>RSVP</td>
						<td>${fn:length(party.getRsvps())}</td>
						<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
	</c:choose>
	<br />
	<h1>RSVP</h1>
	<form method="post" action="/addrsvp">
			<label for="party">Party</label>
			<select name="party" id="party">
				<c:forEach var="partyname" items="${partynames}">
					<option value="${partyname.getId()}">${partyname.getName()}</option>
				</c:forEach>
			</select><br />
		<label for="attendee">Attendee</label>
		<input type="text" name="attendee" pattern="[a-zA-Z][a-zA-Z ]+"/><br />
		<label for="comment">Comment</label>
		<input type="text" name="comment"/><br />
		<input type="submit" value="Send"/>
	</form>
</body>
</html>