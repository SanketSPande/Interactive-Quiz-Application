<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question Explanation</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add your custom CSS styles here -->
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 30px;
        }

        .explanation {
            background-color: #3498db; /* Blue background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2); /* Increased box shadow for a more pronounced effect */
            color: #fff; /* White text color */
        }

        .explanation h1 {
            color: #f1c40f; /* Yellow heading color */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="explanation">
            <h1>Explanation</h1>
            <p>${explanation}</p>
        </div>
    </div>
</body>
</html>
