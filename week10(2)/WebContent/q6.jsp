<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<thead><tr>
<%
	for (int dan = 1; dan <= 9; dan++) {
		out.println("<th>" + dan + "단");
	}
	
	out.println("</tr></th><thead><tbody>");
	
	for(int dan = 1; dan <= 9; dan++){
		out.println("</tr>");
		for(int col = 1; col <= 9; col++){
			out.print("<td>"+col + "*" + dan + "=" + dan * col+"</td>");
		
		}
		out.println("</tr>");
	}
%>
</tbody>
</table>
</body>
</html>