<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 예제 application.jsp</title>
</head>
<body>

<%! int count =0; %>

<%
	String scount = (String) application.getAttribute("count");

	if(scount != null){
		count = Integer.parseInt(scount);
	} else {
		count = 0;
	}
	
	application.setAttribute("count", Integer.toString(++count));
	application.log("현자까지 조회수: "+count);
%>

	서버 컨테이너 정보: <%=application.getServerInfo() %><p>
	현재까지 조회 수: <%=count %>

</body>
</html>