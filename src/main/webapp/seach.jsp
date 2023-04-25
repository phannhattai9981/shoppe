<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="search" method="post" class="form-inline my-2 my-lg-0">
		<div class="input-group input-group-sm">
			<input value="${txtS}" name="txt" type="text" class="form-control"
				aria-label="Small" aria-describedby="inputGroup-sizing-sm"
				placeholder="Search...">
			<div class="input-group-append">
				<button type="submit" class="btn btn-secondary btn-number">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
		<a class="btn btn-success btn-sm ml-3" href="show"> <i
			class="fa fa-shopping-cart"></i> Cart <span class="badge badge-light">3</span>
		</a>
	</form>
</body>
</html>