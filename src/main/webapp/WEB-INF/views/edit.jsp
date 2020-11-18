<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit</h1>
<form method ="post" action="/edit">
<input type="hidden" name="id" value="${partyoption.getId() }"/>
<input type="hidden" name="votes" value="${partyoption.getVotes() }"/>
<label for="name">Name</label>
<input type = "text" name ="name" id="name" value="${ partyoption.getName() }"/><br /><br />
<label for="description">Description</label>
<input type = "text" name ="description" id="description" value="${ partyoption.getDescription()}"/><br /><br />
<label for="type">Description</label>
<input type="hidden" value="${partyoption.getType()}"/>
<select id="type" name="type">
  <option value="Sides">Sides</option>
  <option value="Drinks">Drinks</option>
  <option value="Pizza">Pizza</option>
</select><br /><br />
<input type="submit"/>
</form>
</body>
</html>