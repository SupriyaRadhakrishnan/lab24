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
<a href="/review">Review Options</a>
<h1>Pizza Options</h1>
<table>
<thead>
<tr>
<th><b>Name</b></th>
<th><b>Description</b></th>
<th><b>Votes</b></th>
<th></th>
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
<td><a href="/edit?id=${partyoption.getId()}">Edit</a></td>
<td><a href="/vote/${partyoption.getId()}">Vote</a></td>
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
<th></th>
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
<td><a href="/edit?id=${partyoption.getId()}">Edit</a></td>
<td><a href="/vote/${partyoption.getId()}">Vote</a></td>
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
<th></th>
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
<td><a href="/edit?id=${partyoption.getId()}">Edit</a></td>
<td><a href="/vote/${partyoption.getId()}">Vote</a></td>
</tr>
</c:when>
</c:choose>
</c:forEach>
</tbody>
</table>
<h1>Add an Option</h1>
<form method="post" action="/vote">
<label for="name">Name</label>
<input type="text" name="name" id="name"><br /><br />
<label for="description">Description</label>
<input type="text" name="description" id="description"> <br /><br />
<input type="hidden" value="${partyoption.getType()}"/>
<select name="type" id="type">
  <option value="Sides">Sides</option>
  <option value="Drinks">Drinks</option>
  <option value="Pizza">Pizza</option>
</select>
<input type="submit" value="Add"/>
</form>
</body>
</html>