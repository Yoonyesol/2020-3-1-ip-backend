<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<%
String food = request.getParameter("food");
String name = (String)session.getAttribute("thename");
String pwd = request.getParameter("pwd");

%>
Your name is: <%=name %>
<p>
Your favorite food is: <%=food %>
<p>
Your password is: <%=pwd %>
<form action = "hidden.jsp" method="post" name="form1">
	<input type="hidden" name ="time" value="<%=new java.util.Date()%>">
	<p>
	Hidden Test Name: <input type="text" name ="name">
	</p>
	<input type="submit" name ="submit">
</form>
</body>
</html>