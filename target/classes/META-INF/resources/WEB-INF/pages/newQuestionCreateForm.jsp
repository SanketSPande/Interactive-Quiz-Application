<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>New Question Form</title>
    <style>
        h2 {
            text-align: center;
            font-size: 24px;
        }

        .quiz-title {
            text-align: center;
            font-size: 48px;
        }

        /* Improved UI styles */
        .container {
            margin-top: 20px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .btn-success {
            width: 100%;
        }
        
        .instruction {
            text-align: center;
            font-size: 24px;
        }
    </style>
</head>

<body>
    <h2 class="quiz-title">${quizName}</h2>
    <br>
    <h4 class="instruction">Add Question ${question.getQuestionNo()} Details</h4>
    <div class="container">
        <div class="row justify-content-center mt-4">
            <div class="col-lg-6 col-md-8">
                <div class="card">
                    <div class="card-body">
                        <c:form onsubmit="return validate()" action="/createQuestion/${quizId}" modelAttribute="question"
                            method="post">
                            <div class="form-group">
                                <c:input type="hidden" class="form-control" path="questionNo" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="qstmt" path="questionStatement"
                                    placeholder="Add Question Statement" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="o1" path="option1" placeholder="Add Option 1" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="o2" path="option2" placeholder="Add Option 2" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="o3" path="option3" placeholder="Add Option 3" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="o4" path="option4" placeholder="Add Option 4" />
                            </div>

                            <div class="form-group">
                                <c:input type="text" class="form-control" id="cr_opt_no" path="correctOptionNo"
                                    placeholder="Add Correct Option Number (1/2/3/4)" />
                            </div>
                            
                            <div class="mb-3">
								<c:input type="text"  class = "form-control" id="explanation" path="explanation" placeholder="Add Option 4"/>
							</div><br>

                            <div>
                                <input type="submit" value="Save" class="btn btn-success" />
                            </div>
                        </c:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="common/footer.jspf" %>
    <script type="text/javascript">
        function validate() {
            var qstmt = document.getElementById("qstmt");
            var o1 = document.getElementById("o1");
            var o2 = document.getElementById("o2");
            var o3 = document.getElementById("o3");
            var o4 = document.getElementById("o4");
            var cr_opt_no = document.getElementById("cr_opt_no");

            if (qstmt.value.trim() == "") {
                alert("No blank values allowed for question statement");
                return false;
            }
            if (o1.value.trim() == "") {
                alert("No blank values allowed for option 1");
                return false;
            }
            if (o2.value.trim() == "") {
                alert("No blank values allowed for option 2");
                return false;
            }
            if (o3.value.trim() == "") {
                alert("No blank values allowed for option 3");
                return false;
            }
            if (o4.value.trim() == "") {
                alert("No blank values allowed for option 4");
                return false;
            }
            if (cr_opt_no.value.trim() == "") {
                alert("No blank values allowed for Correct Option No");
                return false;
            }
            if (cr_opt_no.value != 1 & cr_opt_no.value != 2 & cr_opt_no.value != 3 & cr_opt_no.value != 4) {
                alert("Correct Option Number must be a number in between 1 to 4");
                return false;
            }
            if(explanation.trim() == ""){
    			alert("No blank values allowed for Explanation");
    			return false;
    		}else {
                return true;
            }
        }
    </script>
</body>

</html>
