<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resource/Student.css">
	<title>Insert title here</title>
</head>
<body>
	 <main>
        <h1>List Student</h1>
        <a href=""><button>Add Student</button></a>
        <header>
            <div class="h1">
                <h4>Student First Name</h4>
            </div>
            <div class="h1">
                <h4>Student Last Name</h4>
            </div>
            <div class="h1">
                <h4>Student Email</h4>
            </div>
            <div class="h1">
                <h4>Actions</h4>
            </div>
        </header>
        <c:forEach items="${list}" var="list">
        <div class="main1">
            <div class="slide">
               <c:out value="${list.firstName}"/>
            </div>
            <div class="slide">
                <c:out value="${list.lastName}"/>
            </div>
            <div class="slide">
                <c:out value="${list.email}"/>
            </div>
            <div class="slide">
                <div class="up">
                    <a href=""><button>Update</button></a>
                </div>
                <div class="del">
                    <a href=""><button>Delete</button></a>
                </div>
            </div>          
        </div>       
        </c:forEach>
    </main>
</body>
</html>