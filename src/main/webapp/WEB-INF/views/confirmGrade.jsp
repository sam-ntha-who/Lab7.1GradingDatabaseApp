<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm Grade</title>
</head>
<body>
<h1>Grade Confirmation</h1>
<h2>This grade will be added to the database</h2>

<p>Assignment Name: <c:out value="${name}"></c:out></p>
<p>Assignment Type: ${type}</p>
<p>Assignment Score: <fmt:formatNumber value="${score}" pattern="###.0"/></p>
<p>Assignment Total: <fmt:formatNumber value="${total}" pattern="###.0"/></p>

<p><button class="btn"><a href="/" class="button">Back to Grades</a></button></p>

</body>
</html>