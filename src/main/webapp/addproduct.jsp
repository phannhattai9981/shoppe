<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            margin: 5px auto;
            width: 700px;
            border: 1px solid black;
            display: inline-block;
        }
        h2 {
            margin-left: 20%;
            color: red;
        }
        span  {
            font-weight: bold;
            padding: 5px;
            float: left;
            width: 15em;
            text-align:right;
            margin-bottom: 10px;
        }
        input {
            padding: 6px;
            width: 50.5%;
            margin-left: 1em;
            margin-bottom: 10px;
        }
        select {
            padding: 5px;
            margin-left: 13px;
            
        }
        button {
            border: 1px solid red;
            background-color: red;
            color: white;
            padding: 10px 15px;
            margin: 13px;
        }
    </style>
</head>
<body>
    
    <header>
    <h2>Đăng Ký Tham Dự</h2>
    </header>
    <main>
    <form action="new" method="post">
        <span>Họ Và Tên</span>
        <input placeholder="Nhập họ và Tên (*)" type="text" name="name"><br>
        <span>Số Điện Thoại</span>
        <input placeholder=" Nhập số điện thoại(*)" type="texl" name="price"><br>
        <span>Email</span>
        <input placeholder="Nhập đỉa chỉ email (*)" type="text" name="image"><br>
         <span></span>
        <button type="submit">Submit</button>
    </form>
    </main>
    
</body>
</html>