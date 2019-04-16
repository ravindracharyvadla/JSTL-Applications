<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<sql:setDataSource var="ds" user="root" password="root" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/companydb"/>

<sql:update var="result" dataSource="${ds}">

	insert into reg_table values(?,?,?);
	
	<sql:param value="${param.employeeId }"></sql:param>
	<sql:param value="${param.userName }"></sql:param>
	<sql:param value="${param.password }"></sql:param>

</sql:update>

<core:if test="${result>=1}">
	<h4>Data has been successfully inserted into database.</h4>
</core:if>

</body>
</html>