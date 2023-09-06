<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    .hidden-radio {
        display: none;
    }
    .custom-label {
        /* Add your desired styles for normal state here */
        transition: background-color 0.3s ease; /* Smooth transition for hover effect */
        cursor: pointer; /* Add cursor pointer for labels */
    }

    .custom-label:hover {
        background-color: #007bff; /* Change background color on hover */
    }

    .custom-label.active {
        background-color: #007bff; /* Change background color for selected button */
        color: #fff; /* Change text color for selected button */
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        // Remove active class from all labels when a new radio button is clicked
        $(".btn-check").click(function () {
            $(".custom-label").removeClass("active");
            $(this).siblings("label").addClass("active");
        });
    });
</script>
<title>Solve Question</title>
</head>
<body>
<h2>${quizName}</h2><br>
<div class="container">
    <div class="row justify-content-center mt-8">
        <div class="col-lg-8 col-md-6">
            <div class="card">
                <div class="card-body">
                    <form action="/attempt/${quizId}" modelAttribute="answer" method="post">
                        <div class="mb-2">
                            ${index}] ${question.getQuestionStatement()}		
                        </div><br>
                        
                        <!-- Radio buttons with custom labels -->
                        <div class="mb-2" >	
                            <input type="radio" class="btn-check hidden-radio"  id="option1" name="choice"  value="1"/>
                            <label class="btn btn-outline-primary btn-block custom-label" for="option1">${question.getOption1()}</label>
                        </div><br>
                        
                        <div class="mb-2">
                            <input type="radio" class="btn-check hidden-radio"  id="option2" name="choice" value="2"/>		
                            <label class="btn btn-outline-primary btn-block custom-label" for="option2">${question.getOption2()}</label>
                        </div><br>
                        
                        <div class="mb-2">
                            <input type="radio" class="btn-check hidden-radio"  id="option3" name="choice" value="3"/>
                            <label class="btn btn-outline-primary btn-block custom-label" for="option3">${question.getOption3()}</label>
                        </div><br>
                        
                        <div class="mb-2">
                            <input type="radio" class="btn-check hidden-radio"  id="option4" name="choice" value="4"/>
                            <label class="btn btn-outline-primary btn-block custom-label" for="option4">${question.getOption4()}</label>
                        </div><br>		

                        <div>
                            <input type="submit"  value="Next" class="btn btn-success w-50"/>	
                        </div><br>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
