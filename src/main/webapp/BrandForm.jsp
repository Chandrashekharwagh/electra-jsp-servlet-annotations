<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Brand Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
      <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url('https://img.freepik.com/premium-photo/yellow-table-with-yellow-background-with-bunch-items-including-pen-pen-pen-it_1049143-30678.jpg?w=1480');
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
            <h2>Brand Form</h2>
            <form action="brand" method="POST">
            <div class="form-group">
                <label for="id">Brand id:</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>

                <div class="form-group">
                    <label for="name">Brand Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>

                <div class="form-group">
                    <label for="description">Brand Description:</label>
                    <textarea class="form-control" id="description" name="description" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <a href="index.jsp" class="btn btn-primary">Return to Home</a>
        </div>
    </div>
</body>
</html>
