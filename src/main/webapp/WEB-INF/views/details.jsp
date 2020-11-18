<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${party.getName()} Details</h1>
<p><b>Event Date</b>: ${party.getPdate()}</p>
<h1>RSVPS</h1>
<table>
<thead>
<tr>
<th>Attendee</th>
<th>Comment</th>
</tr>
</thead>
<tbody><c:forEach var="rsvp" items="${ party.getRsvps()}">
<tr>
<td>${rsvp.getAttendee() }</td>
<td>${rsvp.getComment() }</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>