<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
<h1>Grades</h1>
   <c:set var = "count" value = "${count}"/>
      <c:if test = "${count < 1}">
         <p>Grades is empty!<p>
      </c:if>
<table class=table>

<thead>
	<tr>
	<th>Name</th>
	<th>Type</th>
	<th>Score</th>
	<th>Total</th>
	<th>Delete</th>
	
	</tr>
</thead>
<tbody>
<c:forEach var="grades" items="${grades}">
<tr><td>${grades.name}</td>
<td>${grades.type}</td>
<td><fmt:formatNumber value="${grades.score}" pattern="###.0"/></td>
<td><fmt:formatNumber value="${grades.total}" pattern="###.0"/></td>

<td><a href="/deleteGrade?id=${grades.id}">Delete Grade</a></td></tr>
</c:forEach>

</tbody>

<tr></tr>
</table>
	    <button class="btn"><a href="/addGrade" class="button">Add Grade</a></button>
</body>
</html>
