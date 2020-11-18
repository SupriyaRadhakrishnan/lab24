<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="/vote">Options&Votes</a>
<a href="/review">Review Options</a>
<h1>Parties</h1>
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
<td> <fmt:formatDate type = "both"  value = "${party.getPdate()}" /></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>