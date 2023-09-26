<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="common/navigation.jspf" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<%@ page import="java.util.List"%>
<%@ page import="com.quiz.project.bean.Answer"%>
<%@ page import="com.quiz.project.bean.Question"%>
<% List<Answer> listOfAnswers = (List)session.getAttribute("listOfAnswers");
List<Question> listOfQuestion = (List)session.getAttribute("listOfQuestionsForResult");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    .score-container {
        background: linear-gradient(to bottom, #007bff, #0056b3);
        color: #fff;
        padding: 15px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s, box-shadow 0.2s, background 0.3s;
        display: inline-block;
        width: 500px;
    }

   
    .center-container {
        text-align: center;
        margin-top: 20px; /* Add some spacing from the top */
    }
</style>

<title>Result</title>
</head>
<body>
<%@ page errorPage="/error.jsp" %>  
<h2>${quizName}</h2><br><br>
<div class="center-container">
    <h4 class="score-container">
        Your Score: ${score}/<%=listOfAnswers.size() %> !!
    </h4>
</div>
<!--  <h4>Your Score = ${score}/<%=listOfAnswers.size() %> !!</h4> -->
<div class="container">
<div class="row">
<div class="col">
<table class="table table-striped table-border bordered-primary">
		<thead>
		
		<tr>
			<th>Question No</th>
			<th>Question Statement</th>
			<th>Option 1</th>
			<th>Option 2</th>
			<th>Option 3</th>
			<th>Option 4</th>
			<th>Correct Option</th>
			<th>Your Answer</th>
			<th>Explanation</th>
			
		</tr>
		
		</thead>
		
		<% for(int index = 0; index < listOfQuestion.size(); index++){ %>	
		
			<%if(listOfQuestion.get(index).getCorrectOptionNo() == listOfAnswers.get(index).getChoice()) {%>
			<div>
			<tr>
				
				<td><%=index + 1%></td>
				<td><%=listOfQuestion.get(index).getQuestionStatement()%></td>
				<td><%=listOfQuestion.get(index).getOption1()%></td>
				<td><%=listOfQuestion.get(index).getOption2()%></td>
				<td><%=listOfQuestion.get(index).getOption3()%></td>
				<td><%=listOfQuestion.get(index).getOption4()%></td>
				<td><%=listOfQuestion.get(index).getCorrectOptionNo()%></td>
				<td class="bg-success"><%=listOfAnswers.get(index).getChoice()%></td>
				<td><a href="/explanation?explanation=<%=listOfQuestion.get(index).getExplanation()%>" class="btn btn-success btn-lg">Explanation</a></td>
				
			</tr>	
			</div>
		 	<% }
		 	
			else if(listOfAnswers.get(index).getChoice() == null) {%>
			<div>
			<tr>
				
				<td><%=index + 1%></td>
				<td><%=listOfQuestion.get(index).getQuestionStatement()%></td>
				<td><%=listOfQuestion.get(index).getOption1()%></td>
				<td><%=listOfQuestion.get(index).getOption2()%></td>
				<td><%=listOfQuestion.get(index).getOption3()%></td>
				<td><%=listOfQuestion.get(index).getOption4()%></td>
				<td><%=listOfQuestion.get(index).getCorrectOptionNo()%></td>
				<td class="bg-warning">Not Attempted</td>
				<td><a href="/explanation?explanation=<%=listOfQuestion.get(index).getExplanation()%>" class="btn btn-success btn-lg">Explanation</a></td>
				
			</tr>	
			</div>
		 	<% }
		 	
		 	 else{ %>
		 	<div >
			<tr>
				
				<td><%=index + 1%></td>
				<td><%=listOfQuestion.get(index).getQuestionStatement()%></td>
				<td><%=listOfQuestion.get(index).getOption1()%></td>
				<td><%=listOfQuestion.get(index).getOption2()%></td>
				<td><%=listOfQuestion.get(index).getOption3()%></td>
				<td><%=listOfQuestion.get(index).getOption4()%></td>
				<td><%=listOfQuestion.get(index).getCorrectOptionNo()%></td>
				<td class="bg-danger"><%=listOfAnswers.get(index).getChoice()%></td>
				<td><a href="/explanation?explanation=<%=listOfQuestion.get(index).getExplanation()%>" class="btn btn-success btn-lg">Explanation</a></td>
				
			</tr>	
			</div>
		 	<% } %>
		 	
		<% } %>
		
</table><br>
 <a href="/showQuizListToUser" class="btn btn-success btn-lg">Go back to Quiz List Page</a>
</div>
</div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>