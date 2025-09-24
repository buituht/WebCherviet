<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản phẩm</title>
</head>
<body>
    <h1>Thêm Sản phẩm mới</h1>
    <form action="${pageContext.request.contextPath}/admin/product/add" method="post" enctype="multipart/form-data">
        <div>
            <label for="cateId">Danh mục:</label>
            <select name="cateId" id="cateId">
                <c:forEach var="category" items="${categories}">
                    <option value="${category.cateId}">${category.cateName}</option>
                </c:forEach>
            </select>
        </div>
        <div>
            <label for="name">Tên Sản phẩm:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div>
            <label for="price">Giá:</label>
            <input type="number" id="price" name="price" step="0.01" required>
        </div>
        <div>
            <label for="image">Hình ảnh:</label>
            <input type="file" id="image" name="image">
        </div>
        <div>
            <label for="description">Mô tả:</label>
            <textarea id="description" name="description"></textarea>
        </div>
        <button type="submit">Thêm Sản phẩm</button>
    </form>
</body>
</html>