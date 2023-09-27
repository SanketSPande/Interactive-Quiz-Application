<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Question Form</title>
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
            if (explanation.trim() == "") {
                alert("No blank values allowed for Explanation");
                return false;
            }
            if (cr_opt_no.value != 1 & cr_opt_no.value != 2 & cr_opt_no.value != 3 & cr_opt_no.value != 4) {
                alert("Correct Option Number must be a number in between 1 to 4");
                return false;
            }

            else {
                return true;
            }
        }
    </script>
    <style>
        /* Style for the header */
        .header {
            background-color: #007BFF;
            color: #FFFFFF;
            text-align: center;
            padding: 20px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header h2 {
            font-size: 24px;
        }

        /* Style for the instructions */
        .instructions {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #333;
            padding: 10px 0;
        }

        /* Center align the form vertically and horizontally */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container-inner {
            max-width: 600px; /* Adjust the width as per your preference */
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for form elements */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        /* Style for the Save button */
        .btn-save {
            display: block;
            width: 50%;
            margin: 0 auto;
            background-color: #007BFF;
            color: #FFFFFF;
            border: none;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-save:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="header">
        <h2>${quiz.getQuizName()}</h2>
    </div>
    <div class="instructions">
        <h4>Please overwrite/select the only fields which you want to change (Overwriting all the fields is not compulsory)</h4>
    </div>
    <div class="container">
        <div class="container-inner">
            <p>* (If you don't want to change any field then leave it as it is)</p>
            <c:form onsubmit="return validate()" action="/updateQuestion/${quiz.getQuizId()}" modelAttribute="question" method="post">

                <div class="form-group">
                    <c:input type="hidden" class="form-control" path="questionNo"
                        placeholder="${question.getQuestionNo()}" />
                </div>

                <div class="form-group">
                    <label for="qstmt">Question Statement</label>
                    <c:input type="text" class="form-control" id="qstmt" path="questionStatement" />
                </div>

                <div class="form-group">
                    <label for="o1">Option 1</label>
                    <c:input type="text" class="form-control" id="o1" path="option1" />
                </div>

                <div class="form-group">
                    <label for="o2">Option 2</label>
                    <c:input type="text" class="form-control" id="o2" path="option2" />
                </div>

                <div class="form-group">
                    <label for="o3">Option 3</label>
                    <c:input type="text" class="form-control" id="o3" path="option3" />
                </div>

                <div class="form-group">
                    <label for="o4">Option 4</label>
                    <c:input type="text" class="form-control" id="o4" path="option4" />
                </div>

                <div class="form-group">
                    <label for="cr_opt_no">Correct Option No</label>
                    <c:input type="text" class="form-control" id="cr_opt_no" path="correctOptionNo" />
                </div>

                <div class="form-group">
                    <label for="explanation">Explanation</label>
                    <c:input type="text" class="form-control" id="explanation" path="explanation" />
                </div>

                <div>
                    <input type="submit" value="Save" class="btn btn-save" />
                </div>

            </c:form>
        </div>
    </div>
    <%@include file="common/footer.jspf" %>
</body>
</html>
