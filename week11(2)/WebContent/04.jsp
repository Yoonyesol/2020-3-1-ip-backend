<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배열값 받기</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<h2>성별과 좋아하는 과목은</h2>
당신은 <strong><%=request.getParameter("sex") %></strong>이고,
좋아하는 과목으로<br>
<strong>
<%
	String[] values = request.getParameterValues("subj");
	if(values != null){
		for(int i=0; i<values.length; i++){        
			out.println("-" + values[i]);
			out.println("<br>");
            }
        }
%>
</strong>
을 선택하였군요.
</body>
</html>