<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://img.freepik.com/free-photo/blue-background-with-blue-background-text_1340-36583.jpg?t=st=1723881435~exp=1723885035~hmac=15f747b9f2a3acd574ec7dc61675358eec765e0aea22fb163297c7d69dbe58e5&w=1380');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: white;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 800px;
            animation: fadeIn 0.8s ease-out;
        }
          .table {
                    color: white;
                }
                .table-striped tbody tr:nth-of-type(odd) {
                    background-color: rgba(255, 255, 255, 0.1);
                }
                .thead-dark th {
                    background-color: rgba(255, 255, 255, 0.2);
                    color: white;
                }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">List of Addresses</h2>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Brand Id</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${ProductList}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.brand}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="pagination-container">
            <c:choose>
                <c:when test="${currentPage == 1}">
                    <button class="btn btn-primary disabled" disabled>Previous Page</button>
                </c:when>
                <c:otherwise>
                    <a href="?page=${currentPage - 1}" class="btn btn-primary">Previous Page</a>
                </c:otherwise>
            </c:choose>
            <a href="index.jsp" class="btn btn-primary">Return to Home</a>
            <a href="?page=${currentPage + 1}" class="btn btn-primary ${currentPage == totalPages ? 'disabled' : ''}">Next Page</a>
        </div>
    </div>
</body>
</html>