<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản phẩm</title>
</head>
<body>
    <h1>Danh Sách Sản Phẩm</h1>
    <a href="${pageContext.request.contextPath}/admin/product/add">Thêm Sản phẩm mới</a>
    
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên Sản phẩm</th>
                <th>Giá</th>
                <th>Hình ảnh</th>
                <th>Mô tả</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <!-- Hiển thị hình ảnh -->
                    <td><img src="/product_images/${product.image}" alt="${product.name}" width="50"></td>
                    <td>${product.description}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}">Sửa</a>
                        <a href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>