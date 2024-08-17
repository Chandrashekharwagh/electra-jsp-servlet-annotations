<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Address Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://plus.unsplash.com/premium_photo-1681488350342-19084ba8e224?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZSUyMGNvbW1lcmNlfGVufDB8fDB8fHww');
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

         .home-button {
                    display: inline-flex;
                    align-items: center;
                    padding: 10px 20px;
                    background-color: #4CAF50;
                    color: white;
                    border-radius: 8px;
                    text-decoration: none;
                    margin-top: 10px;
                    font-size: 16px;
                    font-weight: 600;
                }

                .home-button:hover {
                    background-color: #45a049;
                }

                  .icon-button .material-symbols-outlined {
                            margin-right: 8px;
                            font-size: 24px;
                            font-variation-settings:
                              'FILL' 0,
                              'wght' 400,
                              'GRAD' 0,
                              'opsz' 24;
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
            <h2>Address Form</h2>
            <form action="address" method="POST">
                <div class="form-group">
                    <label for="id">Id:</label>
                    <input type="text" class="form-control" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="street">Street:</label>
                    <input type="text" class="form-control" id="street" name="street" required>
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" id="city" name="city" required>
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <input type="text" class="form-control" id="state" name="state">
                </div>
                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" class="form-control" id="country" name="country" required>
                </div>
                <div class="form-group">
                    <label for="postal_code">Postal Code:</label>
                    <input type="text" class="form-control" id="postal_code" name="postal_code" required>
                </div>
                <input type="submit" class="btn btn-primary" value="Submit">
            </form>
             <!-- Display Addresses Button -->
               <a href="http://localhost:8080/electra/address" class="icon-button">
               <span class="material-symbols-outlined">manage_search</span>
             </a>

            <!-- Home Button -->
               <a href="index.jsp" class="home-button">
               <span class="material-symbols-outlined">home</span>
               Home
             </a>
        </div>
    </div>
</body>
</html>
