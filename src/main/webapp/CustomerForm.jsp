<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
      <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url('https://st2.depositphotos.com/1760420/5432/i/450/depositphotos_54324565-stock-photo-online-shopping-and-e-commerce.jpg');
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
    <div class="container">
        <div class="form-container">
            <h2>Customer Form</h2>
            <form action="customer" method="POST">
                <div class="form-group">
                    <label for="id">Customer id:</label>
                    <input type="text" class="form-control" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="name">Customer Name:</label>
                    <input type="name" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Customer Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <a href="index.jsp" class="btn btn-primary">Return to Home</a>
        </div>
    </div>
</body>
</html>
