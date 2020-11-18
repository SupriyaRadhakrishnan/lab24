<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Party</h1>
<form method ="post" action="/editparty">
<input type="hidden" name="id" value="${party.getId() }"/>
<input type="hidden" name="pdate" value="${ party.getPdate()}"/>
<label for="name">Name</label>
<input type = "text" name ="name" id="name" value="${ party.getName() }"/><br /><br />
<input type = "datetime-local" name ="newdate" id="newdate"/>
<input type="submit"/>
</body>
</html>