<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solve Question</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

        h2 {
            font-size: 28px;
            margin-top: 20px;
            color: #007bff;
            text-align: center;
        }

        .card {
            border: none;
        }

        .btn-check {
            display: none;
        }

        .custom-label {
            cursor: pointer;
            transition: background-color 0.3s ease;
            border: 1px solid #007bff;
            border-radius: 5px;
            padding: 10px;
            text-align: left;
        }

        .custom-label:hover {
            background-color: #007bff;
            color: #fff;
        }

        .custom-label.active {
            background-color: #007bff;
            color: #fff;
            border: 1px solid #007bff;
        }

        .btn-next {
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-next:hover {
            background-color: #218838;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Handle option selection
            $(".custom-label").click(function () {
                $(".custom-label").removeClass("active");
                $(this).addClass("active");
                $(this).prev(".btn-check").prop("checked", true);
            });
        });
    </script>
</head>
<body>
    <h2>${quizName}</h2><br>
    <div class="container">
        <div class="row justify-content-center mt-3">
            <div class="col-lg-8 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <form action="/attempt/${quizId}" modelAttribute="answer" method="post">
                            <div class="mb-4">
                                ${index}] ${question.getQuestionStatement()}
                            </div>

                            <!-- Radio buttons with custom labels -->
                            <div class="mb-2">
                                <input type="radio" class="btn-check hidden-radio" id="option1" name="choice" value="1" />
                                <label class="custom-label" for="option1">${question.getOption1()}</label>
                            </div>

                            <div class="mb-2">
                                <input type="radio" class="btn-check hidden-radio" id="option2" name="choice" value="2" />
                                <label class="custom-label" for="option2">${question.getOption2()}</label>
                            </div>

                            <div class="mb-2">
                                <input type="radio" class="btn-check hidden-radio" id="option3" name="choice" value="3" />
                                <label class="custom-label" for="option3">${question.getOption3()}</label>
                            </div>

                            <div class="mb-2">
                                <input type="radio" class="btn-check hidden-radio" id="option4" name="choice" value="4" />
                                <label class="custom-label" for="option4">${question.getOption4()}</label>
                            </div>

                            <div>
                                <button type="submit" class="btn btn-next w-100">Next</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
