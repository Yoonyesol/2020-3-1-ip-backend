<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! int fontSize; %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>반복 구조 예제</title>
</head>
<body>
<%for ( fontSize = 1; fontSize <= 6; fontSize++){ %>
   <font color="red" size="<%= fontSize %>">
    안녕하세요?
   </font><br />
<%}%>
</body>
</html>