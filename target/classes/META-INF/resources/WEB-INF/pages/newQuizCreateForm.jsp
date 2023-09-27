<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="c" %>  
<!DOCTYPE html>
<html>

<script>
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
			true;
		}
		alert("Quiz added successfully!!");
	}

</script>
     <style>
        /* Style for the navigation bar */
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: left;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin-right: 15px;
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
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .instructions {
            text-align: center;
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
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
<head>
<meta charset="ISO-8859-1">
<title>New Quiz Form</title>

</head>


<body>
    
    <div class="container">
        <div class="container-inner">
            <div class="instructions">
                <h2>Add Quiz Details</h2>
            </div>
            <form onsubmit="return validate()" action="createQuiz" modelAttribute="quiz" method="post">

                <div class="form-group">
                    <label for="qname">Quiz Name</label>
                    <input type="text" class="form-control" id="qname" path="quizName" placeholder="Add Quiz Name" required>
                </div>

                <div class="form-group">
                    <label for="adt">Activation Date & Time</label>
                    <input type="datetime-local" class="form-control" id="adt" path="activationDateTime" min="${quiz.getActivationDateTime()}" required>
                </div>

                <div class="form-group">
                    <label for="ddt">Deactivation Date & Time</label>
                    <input type="datetime-local" class="form-control" id="ddt" path="deactivationDateTime" required>
                </div>

                <button type="submit" class="btn-save">Save</button>

            </form>
        </div>
    </div>
    <%@include file="common/footer.jspf" %>
</body>
</html>