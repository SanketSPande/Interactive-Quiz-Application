<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="common/navigation.jspf" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Me</title>
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
}

header {
    background-color: #007bff;
    color: #fff;
    text-align: center;
    padding: 20px 0;
}

h1 {
    margin: 0;
}

.contact-info {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.contact-info h2 {
    color: #007bff;
    margin-bottom: 10px;
}

.contact-info p {
    margin: 10px 0;
}

.contact-info a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

.contact-info a:hover {
    text-decoration: underline;
}
    
    </style>
</head>
<body>
    <header>
        <h1>Contact Me</h1>
    </header>
    <section class="contact-info">
        <h2>Contact Information</h2>
        <p><strong>Name:</strong> Sanket Pande</p>
        <p><strong>Email:</strong> <a href="mailto:sanketspande@gmail.com">sanketspande@gmail.com</a></p>
        <p><strong>Phone:</strong> +91-7743843894</p>
        <p><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/sanket-s-pande/" target="_blank">LinkedIn Profile</a></p>
        <p><strong>GitHub:</strong> <a href="https://github.com/SanketSPande" target="_blank">GitHub Profile</a></p>
    </section>
</body>
</html>