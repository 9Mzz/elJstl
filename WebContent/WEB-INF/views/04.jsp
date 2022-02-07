<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>el jstl</h1>

	<h2>객체접근</h2>

	<h3>자바문법</h3>

	<%
	UserVo userVo = (UserVo) request.getAttribute("userVo");
	int num = (int) request.getAttribute("num");
	String str = (String) request.getAttribute("str");
	
	request.getAttribute("num");
	%>

	no = <%=userVo.getNo() %>
	name = <%=userVo.getName()%>
	email = <%=userVo.getEmail()%>
	password = <%=userVo.getPassword()%>
	gender = <%=userVo.getGender()%>
	<br>
	num = <%=num %>
	str = <%=str %>
	<br>
	
	<h3>el </h3>
	<!-- requestScope는 생략 가능.. -->
	no = ${requestScope.userVo.no}<br>
	name = ${requestScope.userVo.name}<br>
	email = ${requestScope.userVo.email}<br>
	password = ${requestScope.userVo.password}<br>
	gender = ${requestScope.userVo.gender}<br>
	
	<br>
	num = ${requestScope.num }<br>
	str = ${requestScope.str }<br>
	
	

</body>
</html>