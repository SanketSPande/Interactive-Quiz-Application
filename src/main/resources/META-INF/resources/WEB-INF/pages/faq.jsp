<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQs - Quiz Application</title>
    <link rel="stylesheet" href="your-stylesheet.css">
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
            font-size: 28px;
            margin-top: 20px;
            color: #007bff;
            text-align: center;
        }

        .faq-section {
            margin-top: 20px;
        }

        .section-heading {
            font-size: 20px;
            color: #007bff;
            margin-top: 20px;
        }

        .faq-item {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
        }

        .faq-item h3 {
            font-size: 18px;
            margin-top: 0;
        }

        .faq-item p {
            font-size: 16px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Frequently Asked Questions</h1>

        <!-- FAQ Section 1: General Questions -->
        <div class="faq-section">
            <div class="section-heading">General Questions</div>
            <div class="faq-item">
                <h3>1. What is the Quiz Application?</h3>
                <p>The Quiz Application is an online platform for creating and taking quizzes.</p>
            </div>
            <div class="faq-item">
                <h3>2. How can I create a quiz?</h3>
                <p>To create a quiz, you need to use the quiz creation interface.</p>
            </div>
            <!-- Add more FAQ items here -->
        </div>

        <!-- FAQ Section 2: Taking Quizzes -->
        <div class="faq-section">
            <div class="section-heading">Taking Quizzes</div>
            <div class="faq-item">
                <h3>1. How do I take a quiz?</h3>
                <p>To take a quiz, navigate to the available quizzes, and click "Attempt"</p>
            </div>
            <div class="faq-item">
                <h3>2. Can I review my quiz results?</h3>
                <p>Yes, you can review your quiz results after completing a quiz.</p>
            </div>
            <!-- Add more FAQ items here -->
        </div>

        <!-- FAQ Section 3: Admin Features -->
        <div class="faq-section">
            <div class="section-heading">Admin Features</div>
            <div class="faq-item">
                <h3>1. How can I add questions to a quiz?</h3>
                <p>As an admin, you can add questions to a quiz from the admin dashboard.</p>
            </div>
            <div class="faq-item">
                <h3>2. Can I edit or delete quizzes?</h3>
                <p>Yes, you can edit or delete quizzes you have created from the admin dashboard.</p>
            </div>
            <!-- Add more FAQ items here -->
        </div>
    </div>
<%@include file="common/footer.jspf" %>
</body>
</html>
