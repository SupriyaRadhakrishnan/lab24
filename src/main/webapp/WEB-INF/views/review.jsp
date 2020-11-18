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
<a href="/">Parties</a>
<a href="/vote">Options&Votes</a>
<h1>Pizza Options</h1>
<table>
<thead>
<tr>
<th><b>Name</b></th>
<th><b>Description</b></th>
<th><b>Votes</b></th>
<th><b></b></th>
</tr>
</thead>
<tbody>
<c:forEach var="partyoption" items="${partyoptions}">
<c:choose>
<c:when test="${partyoption.getType() eq 'Pizza' }">
<tr>
<td>${partyoption.getName()}</td>
<td>${partyoption.getDescription()} </td>
<td>${partyoption.getVotes()}</td>
</tr>
</c:when>
</c:choose>
</c:forEach>
</tbody>
</table>

<h1>Sides Options</h1>
<table>
<thead>
<tr>
<th><b>Name</b></th>
<th><b>Description</b></th>
<th><b>Votes</b></th>
<th><b></b></th>
</tr>
</thead>
<tbody>
<c:forEach var="partyoption" items="${partyoptions}">
<c:choose>
<c:when test="${partyoption.getType() eq 'Sides' }">
<tr>
<td>${partyoption.getName()}</td>
<td>${partyoption.getDescription()} </td>
<td>${partyoption.getVotes()}</td>
</tr>
</c:when>
</c:choose>
</c:forEach>
</tbody>
</table>
<h1>Drinks Options</h1>
<table>
<thead>
<tr>
<th><b>Name</b></th>
<th><b>Description</b></th>
<th><b>Votes</b></th>
<th><b></b></th>
</tr>
</thead>
<tbody>
<c:forEach var="partyoption" items="${partyoptions}">
<c:choose>
<c:when test="${partyoption.getType() eq 'Drinks' }">
<tr>
<td>${partyoption.getName()}</td>
<td>${partyoption.getDescription()} </td>
<td>${partyoption.getVotes()}</td>
</tr>
</c:when>
</c:choose>
</c:forEach>
</tbody>
</table>
</body>
</html>