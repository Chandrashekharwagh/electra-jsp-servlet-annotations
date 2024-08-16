<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">List of Addresses</h2>
        <form action="address" method="GET">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Street</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Country</th>
                    <th>PostalCode</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="address" items="${AddressList}">
                    <tr>
                        <td>${address.id}</td>
                        <td>${address.street}</td>
                        <td>${address.city}</td>
                        <td>${address.state}</td>
                        <td>${address.country}</td>
                        <td>${address.postalCode}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-primary">Return to Home</a>
    </div>
</body>
</html>
