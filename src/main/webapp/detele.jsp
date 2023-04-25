<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="detele" method="post">
	 <label for="id">ID</label>
	  <input type="text" name="id" value="${detail.id}"><br><br>
	  <button type="submit">Submit</button>
	  
	</form>
</body>
</html>