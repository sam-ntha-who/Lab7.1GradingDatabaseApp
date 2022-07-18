<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Grade</title>
</head>
<body>
<h1>Add Grade</h1>
<h2>This is a test</h2>

<form class="form" action="/confirmGrade" method="post">
       <input type="hidden" value="${grades.id}"/>
        <table>
        
       		
       		<tr><td>Assignment Name: </td><td><input type="text" value="${grades.name}" name="name" placeholder="${grades.name}"/></td></tr>
       		<tr><td>Assignment Type: </td><td><input type="text" value="${grades.type}" name="type" placeholder="${grades.type}"/></td></tr>
       		<tr><td>Assignment Score: </td><td><input type="number" value="${grades.score}" name="score" placeholder="${grades.score}"/></td></tr>
        	<tr><td>Assignment Total: </td><td><input type="number" value="${grades.total}" name="total" placeholder="${grades.total}"/></td></tr>
			
        	
	       </table>
      	<br>
      	<br>
        <input class="button" type="submit"/>
        <input class="button" type="reset" value="Reset" />
        <button class="btn"><a href="/" class="button">Back to Grades</a></button>

        </form>
</body>
</html>