<%@include file="common/header.jspf" %>
<%@include file="common/navigation.jspf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html>
<script>
function confirmation(){
    var result = confirm("Are you sure you want to delete this quiz?");
    if(result){
        alert("Deleted Successfully!");
    }
    
    return result;
}
</script>
<head>
<meta charset="ISO-8859-1">
<title>Quiz List</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col">
<table class="table table-striped table-border bordered-primary">
		<thead>
		
		<tr>
			<th>Quiz No</th>
			<th>Quiz Title</th>
			<th>Questions in Quiz</th>	
			<th>No of Questions</th>			
			<th>Activation Date(yyyy-mm-dd)
			& Time(hh:mm:ss)</th>
			<th>Deactivation Date(yyyy-mm-dd)
			& Time(hh:mm:ss)</th>
						
		</tr>
		
		</thead>
		
		<c1:forEach items="${quizList}" var="l">
		
			<tr>
				
				<td>${quizList.indexOf(l) + 1}</td>
				<td>${l.quizName}</td>
				<td><a href="/reviewQuestions/${l.quizId}" class="btn btn-success">Add/Edit Questions</a></td>
				<td><p>${(l.listOfQuestions.size() - 1) + 1}</p></td>
				<td><p>${l.activationDateTime}</p></td>
				<td><p>${l.deactivationDateTime}</p></td>				
				<th><a href="/updateQuiz?quizId=${l.quizId}" class="btn btn-success" > Edit </a> </th>
				<th><a href="/deleteQuiz?quizId=${l.quizId}" class="btn btn-warning" onclick="return confirmation();"> Delete </a> </th>
			
			</tr>	
		
		</c1:forEach>	
</table><br>
<a href="/createQuiz" class="btn btn-success"> Add New Quiz Here</a> 
</div>
</div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>