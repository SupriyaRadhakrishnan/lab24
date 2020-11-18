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
<a href="/">Return to HomePage</a>
<h1>Party Admin</h1>
<table>
<thead>
<tr>
<td>Event</td>
<td>Date</td>
<td></td>
<td></td>
</tr>
</thead>
<tbody>
<c:forEach var="party" items="${parties}">
<tr>
<td>${party.getName() }</td>
<td>${party.getPdate()}</td>
<td><a href ="/editparty?id=${party.getId()}">Edit</a></td>
<td><a href ="/delete?id=${party.getId()}">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<h1>Add Party</h1>
<form method ="post" action="/add">
<label for="name">Name</label>
<input type = "text" name ="name" id="name" required/><br /><br />
<input type = "datetime-local" name ="newdate" id="newdate" required/><br /><br />
<input type="submit" value="Add a Party"/>
</form>
</body>
</html>