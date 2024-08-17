<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url('https://t4.ftcdn.net/jpg/07/41/09/09/360_F_741090944_FV8Iik9MccRaDPVd1TxU2y4rdnZw5zcp.jpg');
                background-size: cover;
                background-position: center;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .form-container {
                background-color: rgba(255, 255, 255, 0.9); /* White background with transparency */
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                width: 100%;
                max-width: 500px;
                animation: fadeIn 0.8s ease-out;
            }

            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(20px); }
                to { opacity: 1; transform: translateY(0); }
            }
        </style>
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
