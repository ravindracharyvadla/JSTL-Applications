<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="ds" user="root" password="root" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/companydb"/>

<sql:query var="result" dataSource="${ds}">
	SELECT * FROM reg_table;
</sql:query>

<table border="1">
	<tr>
		<th>Employee Id</th>
		<th>User Name</th>
		<th>Password</th>
	</tr>
	<core:forEach var="result1" items="${result.rows}">
	<tr>
		<td><core:out value="${result1.eid}"></core:out></td>
		<td><core:out value="${result1.uname}"></core:out></td>
		<td><core:out value="${result1.pwd}"></core:out></td>
	</tr>
	</core:forEach>
</table>

</body>
</html>