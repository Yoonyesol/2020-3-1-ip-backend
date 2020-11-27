<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP예제 sendredirect.jsp</title>
</head>
<body>
<%
	String URL = "https://search.naver.com/search.naver?where=nexearch";
	String keyword = request.getParameter("word");
	URL += "&" + "query=" + keyword;
	response.sendRedirect(URL);
%>
</body>
</html>