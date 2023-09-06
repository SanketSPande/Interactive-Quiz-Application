<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Rules & Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        h1 {
            font-size: 36px;
            margin-top: 20px;
            color: #007bff;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            margin-top: 30px;
            color: #333;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
            font-size: 18px;
            color: #555;
        }

        .btn-container {
            text-align: center;
            margin-top: 30px;
        }

        .btn-attempt {
            padding: 15px 30px;
            font-size: 20px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-attempt:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>${quiz.getQuizName()}</h1>

    <h2>Some Rules of this Quiz</h2>
    <ul>
        <li>This quiz contains ${quiz.getListOfQuestions().size()} questions.</li>
        <li>You can't exit from the quiz while you are playing.</li>
        <li>You can't go back to the previous question once you hit next.</li>
        <li>You'll earn points based on your correct answers.</li>
        <li>Each correct answer is worth one point.</li>
    </ul>

    <div class="btn-container">
        <a href="/attempt/${quiz.getQuizId()}" class="btn btn-attempt">Start Quiz</a>
    </div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>
