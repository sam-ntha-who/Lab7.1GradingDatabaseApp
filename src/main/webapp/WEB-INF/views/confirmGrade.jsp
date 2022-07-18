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
<h1>Confirm Grade</h1>
<h2>this is a test</h2>

<p>Assignment Name: <c:out value="${name}"></c:out></p>
<p>Assignment Type: <c:out value="${type}"></c:out></p>
<p>Assignment Score: <c:out value="${score}"></c:out></p>
<p>Assignment Total: <c:out value="${total}"></c:out></p>

<p><button class="btn"><a href="/" class="button">Back to Grades</a></button></p>

</body>
</html>