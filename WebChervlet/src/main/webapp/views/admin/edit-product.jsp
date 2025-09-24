<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa Sản phẩm</title>
</head>
<body>
    <h1>Chỉnh sửa Sản phẩm</h1>
    <form action="${pageContext.request.contextPath}/admin/product/edit" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${product.id}">
        <input type="hidden" name="oldImage" value="${product.image}">

        <div>
            <label for="cateId">Danh mục:</label>
            <select name="cateId" id="cateId">
                <c:forEach var="category" items="${categories}">
                    <option value="${category.cateId}" ${category.cateId == product.cateId ? 'selected' : ''}>
                        ${category.cateName}
                    </option>
                </c:forEach>
            </select>
        </div>
        <div>
            <label for="name">Tên Sản phẩm:</label>
            <input type="text" id="name" name="name" value="${product.name}" required>
        </div>
        <div>
            <label for="price">Giá:</label>
            <input type="number" id="price" name="price" value="${product.price}" step="0.01" required>
        </div>
        <div>
            <label>Hình ảnh hiện tại:</label><br>
            <img src="${pageContext.request.contextPath}/uploads/product/${product.image}" alt="${product.name}" width="100">
        </div>
        <div>
            <label for="image">Chọn hình ảnh mới:</label>
            <input type="file" id="image" name="image">
        </div>
        <div>
            <label for="description">Mô tả:</label>
            <textarea id="description" name="description">${product.description}</textarea>
        </div>
        <button type="submit">Lưu</button>
    </form>
</body>
</html>