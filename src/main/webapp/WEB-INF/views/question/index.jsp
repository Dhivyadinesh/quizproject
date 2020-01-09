<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>'
.progress {
	margin-top: 25px;
}
.not-selectable {
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
</style>

<body class="not-selectable">
      <h2>Online Quizz</h2>
      <form method="post" action="${pageContext.request.contextPath }/question/submit">
	      <ol type="1">
	         <c:forEach var="question" items="${questions }">
	             <li>
		             ${question.content }
		             <input type="hidden" name="questionId" value="${question.id }">
			             <ol type="a">
			                 <c:forEach var="answer" items="${ question.answers }">
				                 <li>
				                    <input type="radio" name="question_${question.id }" value="${answer.id }">
				                 	${answer.content}
				                 </li>
			                 </c:forEach>
		             	</ol>
	             </li>
	         </c:forEach>
	      </ol>
	      <br>
	      <input type="submit" class="btn-success" value="Submit">
      </form>
</body>
</html>