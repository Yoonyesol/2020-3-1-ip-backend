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
	java.util.Date date= new java.util.Date();
%>
안녕하세요? 현재 시각은
<%
	out.println(date);
	out.println("<BR>이고 ip주소는 ");
	out.println(request.getRemoteAddr());
%>
입니다.
</body>
</html>