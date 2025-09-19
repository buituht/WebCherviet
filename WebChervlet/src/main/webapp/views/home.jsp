<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="core1" uri="jakarta.tags.core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
/* Kiểu chung cho body và container của form */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
}

.login-container {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
    box-sizing: border-box;
}

/* Tiêu đề của form */
h2 {
    color: #1c1e21;
    margin-bottom: 25px;
    font-size: 24px;
}

/* Kiểu cho thông báo lỗi */
.alert {
    padding: 12px;
    margin-bottom: 20px;
    border-radius: 5px;
    font-weight: bold;
    text-align: left;
    border: 1px solid transparent;
}

.alert-danger {
    color: #721c24;
    background-color: #f8d7da;
    border-color: #f5c6cb;
}

/* Kiểu cho thông báo lỗi từ requestScope */
p[style="color: red;"] {
    margin-bottom: 20px;
    font-weight: bold;
}

/* Form và các trường nhập liệu */
form {
    display: flex;
    flex-direction: column;
    align-items: stretch;
}

label {
    align-self: flex-start;
    margin-bottom: 8px;
    font-weight: bold;
    color: #555;
    font-size: 14px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    font-size: 16px;
    transition: border-color 0.3s, box-shadow 0.3s;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    outline: none;
}

/* Kiểu cho ô checkbox */
input[type="checkbox"] {
    margin-right: 5px;
}

/* Kiểu cho nút Đăng nhập */
input[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    border: none;
    border-radius: 6px;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.2s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}
</style>

</head>
<body>
this is home page
</body>
</html>