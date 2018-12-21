<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome to Employee Data a</h2>
		<table border="2">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Gender</th>
			<th>City</th>
			<th>Operatation</th>
		</tr>
	
		<c:forEach items="${edata}" var="s">
		<tr>
			<td><c:out value="${s.empId}"></c:out></td>
			<td><c:out value="${s.empName}"></c:out></td>
			<td><c:out value="${s.empEmail}"></c:out></td>
			<td><c:out value="${s.empMobile}"></c:out></td>
			<td><c:out value="${s.empGender}"></c:out></td>
			<td><c:out value="${s.empCity}"></c:out></td>
			<td><a href="edit?id=${s.empId}">Edit</a></td>
			<td><a href="delete?id=${s.empId}">Delete</a></td>	
		</tr>
		</c:forEach>	
		</table>
</body>
${msg}
</html>