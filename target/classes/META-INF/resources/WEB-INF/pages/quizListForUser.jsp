<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<%@ page import="java.util.List" %>
<%@ page import="com.quiz.project.bean.Quiz" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard - Quizzes with Status</title>
</head>
<body>
<%List<Quiz> quizList=(List<Quiz>)session.getAttribute("quizList"); 
int i = 0; %>
<div class="container">
<div class="row">
<div class="col">
<h1>User Dashboard</h1><br> <!-- Add this heading -->
<table class="table table-striped table-border bordered-primary">
		<thead>
		
		<tr>
			<th>Quiz No</th>
			<th>Quiz Title</th>			
			<th>Status</th>	
			<th>Action</th>					
		</tr>
		
		</thead>
		
		<c1:forEach items="${quizList}" var="l">
		<%  Quiz quiz = quizList.get(i); i++;%>
			<tr>
				
				<td>${quizList.indexOf(l) + 1}</td>
				<td>${l.quizName}</td>
				<td><p>${l.activationStatus}</p></td>
				
				<%if((quiz.getActivationStatus().equals("Active")) && (quiz.getListOfQuestions().size()>0)){   %>
				<th><a href="/quizRules/${l.quizId}" class="btn btn-success"> Attempt </a> </th>
				<% } 
				else if(quiz.getActivationStatus().equals("Inactive")) { %>
				<td><p>Will become active ${l.activationDateTime} onwards</p></td>
				<% } %>
			</tr>	
		
		</c1:forEach>
			
</table><br>
</div>
</div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>
