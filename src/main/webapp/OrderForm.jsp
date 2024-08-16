<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
      <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url('https://img.freepik.com/free-photo/shopping-cart-filled-with-coins-copy-space-background_23-2148305919.jpg?w=1380&t=st=1723818159~exp=1723818759~hmac=7d10d864b44fb4c5bf0db7b66e235915c948ce02f0ac3504d9d07e2e3fc7fe88');
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
            <h2>Orders Form</h2>
            <form action="order" method="POST">
                <div class="form-group">
                    <label for="id">Order ID:</label>
                    <input type="text" class="form-control" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="product_id">Product ID:</label>
                    <input type="text" class="form-control" id="product_id" name="product_id" required>
                </div>
                <div class="form-group">
                    <label for="customer_id">Customer ID:</label>
                    <input type="text" class="form-control" id="customer_id" name="customer_id" required>
                </div>
                <div class="form-group">
                    <label for="order_date">Order Date:</label> <!-- Changed 'localDate' to 'order_date' -->
                    <input type="text" class="form-control" id="order_date" name="order_date" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <a href="index.jsp" class="btn btn-primary">Return to Home</a>
        </div>
    </div>
</body>
</html>
