<%@include file="common/header.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('background.jpg'); /* Replace 'background.jpg' with your image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        .header {
            background-color: #007bff;
            color: #fff;
            padding: 10px 0;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .btn-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .btn {
            padding: 15px 30px;
            font-size: 18px;
            margin: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-success {
            background-color: #28a745;
            color: #fff;
            border: 2px solid #218838;
        }

        .btn-success:hover {
            background-color: #218838;
            transform: scale(1.05);
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: 2px solid #0056b3;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Welcome to the <span style="color: #ffcc00;">Interactive Quiz Application</span></h1>
    </div>
    <div class="content">
        <h2>About the Application</h2>
        <p>
            Explore a world of knowledge and fun with our Quiz Application. Whether you're an administrator or a user, we've got you covered.
        </p>

        <h3>For Administrators:</h3>
        <ol>
            <li><strong>Admin Dashboard:</strong> Manage quizzes and questions effortlessly.</li>
            <li><strong>Manage Quizzes:</strong> Add, edit, or delete quizzes with ease.</li>
            <li><strong>Manage Questions:</strong> Create, modify, or remove quiz questions effortlessly.</li>
        </ol>

        <h3>For Users:</h3>
        <ol>
            <li><strong>Browse Quizzes:</strong> Discover a variety of engaging quizzes.</li>
            <li><strong>Select Quiz:</strong> Choose a quiz and dive into the world of questions.</li>
            <li><strong>Attempt Quiz:</strong> Answer questions and test your knowledge.</li>
            <li><strong>Submit Quiz:</strong> Get your score and review your answers.</li>
        </ol>

        <p>
            Join us in this exciting journey of learning and challenge. Let's start quizzing!
        </p>
    </div>
    <div class="btn-container">
        <a href="/showQuizListToAdmin" class="btn btn-success">Admin</a>
        <a href="/showQuizListToUser" class="btn btn-primary">User</a>
    </div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>
