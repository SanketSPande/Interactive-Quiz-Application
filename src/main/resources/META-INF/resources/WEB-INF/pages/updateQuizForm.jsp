<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Quiz Form</title>
<script type="text/javascript">
function validate(){
	var qname = document.getElementById("qname");		
	var adt = new Date(document.getElementById('adt').value);
	var ddt = new Date(document.getElementById('ddt').value);
	var localDateTime = new Date();
	
	var comparableDate = new Date(adt);
	comparableDate.setHours(comparableDate.getHours() + 1);

	
	if(qname.value.trim() ==""){
		alert("No blank values allowed for quiz name");
		return false;			
	}
	if(!Date.parse(adt)){
		alert("No blank values allowed for activation date-time");	
		return false;
	}
	if(adt.getTime() < localDateTime.getTime()){
		 alert("Activation date & time values less than or equal to the Current Date & time are not allowed");
	      return false;
	}
	if(!Date.parse(ddt)){
		alert("No blank values allowed for deactivation date-time");
		return false;
	}
	if(ddt.getTime() < comparableDate.getTime()){
		 alert("Deactivation date-time should be atleast 1 hour more than Activation date-time");
	      return false;
	}
	
	else{
		alert("Updated Successfully!");
		true;
	}
	
}
</script>

<style>
        /* Style for the header */
        .header {
            background-color: #007BFF;
            color: #FFFFFF;
            text-align: center;
            padding: 30px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header h2 {
            font-size: 35px;
        }

        .instructions {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #333;
            padding: 10px 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container-inner {
            max-width: 600px;
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        .btn-save {
            display: block;
            width: 100%;
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
            <c:form onsubmit="return validate()" action="updateQuiz" modelAttribute="quiz" name="newQuizForm" method="post">

                <div class="form-group">
                    <c:input type="hidden" class="form-control" id="qid" path="quizId" placeholder="${quiz.getQuizId()}" />
                </div>

                <div class="form-group">
                    <label for="qname">Previous Quiz Name</label>
                    <c:input type="text" class="form-control" id="qname" path="quizName"
                        placeholder="${quiz.getQuizName()}" />
                </div>

                <div class="form-group">
                    Previous activation date & time (yyyy-mm-ddThh:mm) = ${quiz.getActivationDateTime()}<br>
                    Select a new activation date & time of quiz
                    <c:input type="datetime-local" class="form-control" id="adt" path="activationDateTime" />
                </div>

                <div class="form-group">
                    Previous deactivation date & time (yyyy-mm-ddThh:mm) = ${quiz.getDeactivationDateTime()}<br>
                    Select a new deactivation date & time of quiz
                    <c:input type="datetime-local" class="form-control" id="ddt" path="deactivationDateTime"
                        placeholder="${quiz.getDeactivationDateTime()}" />
                </div>

                <div class="form-group">
                    <input type="submit" value="Save Changes" class="btn-save" />
                </div>

            </c:form>
        </div>
    </div>
    <%@include file="common/footer.jspf" %>
</body>
</html>