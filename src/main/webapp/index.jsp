<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Index Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
      <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url('https://img.freepik.com/premium-photo/top-view-online-shopping-concept-with-credit-card-smart-phone-computer-isolated-office-yellow-table-background_315337-5985.jpg');
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
        <h1 class="text-center">Welcome to Electra</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Address Form</h5>
                        <p class="card-text">Manage address details.</p>
                        <a href="AddressForm.jsp" class="btn btn-primary">Go to Address Form</a>
                    </div>
                </div>
            </div>
            <!-- Repeat the following block for each form -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Brand Form</h5>
                        <p class="card-text">Manage brand details.</p>
                        <a href="BrandForm.jsp" class="btn btn-primary">Go to Brand Form</a>
                    </div>
                </div>
            </div>
            <!-- Add more cards as necessary -->
            <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Customer Form</h5>
                                    <p class="card-text">Manage Customer details.</p>
                                    <a href="CustomerForm.jsp" class="btn btn-primary">Go to Customer Form</a>
                                </div>
                            </div>
                        </div>
            <!-- Add more cards as necessary -->
            <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Order Form</h5>
                                    <p class="card-text">Manage Order details.</p>
                                    <a href="OrderForm.jsp" class="btn btn-primary">Go to Order Form</a>
                                </div>
                            </div>
                        </div>
            <!-- Add more cards as necessary -->
            <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Payment Form</h5>
                                    <p class="card-text">Manage Payment details.</p>
                                    <a href="PaymentForm.jsp" class="btn btn-primary">Go to Payment Form</a>
                                </div>
                            </div>
                        </div>
            <!-- Add more cards as necessary -->
            <div class="col-md-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Product Form</h5>
                                    <p class="card-text">Manage Product details.</p>
                                    <a href="ProductForm.jsp" class="btn btn-primary">Go to Product Form</a>
                                </div>
                            </div>
                        </div>
            <!-- Add more cards as necessary -->

        </div>
    </div>
</body>
</html>
