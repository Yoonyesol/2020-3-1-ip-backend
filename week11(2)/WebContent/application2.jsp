<%@ page contentType="text/html;charset=euc-kr" 
	import="java.io.*"
%>

<HTML>
<HEAD><TITLE> </TITLE></HEAD>
<BODY>
<center>
<H2>application 예제</H2>
<HR>
1. 서버정보 : <%= application.getServerInfo() %> <BR>
2. 서블릿 API 버전정보 : 
    <%= application.getMajorVersion() 
    +"."+application.getMinorVersion() %> <BR>
3. application.jsp 화일의 실제경로 :
<%= application.getRealPath("application.jsp") %> <BR>

<HR>
setAttribute 로 username 변수에 "홍길동" 설정<P>
<% application.setAttribute("username","홍길동"); 
	   application.log("username=홍길동");
%>

<a href="application_result.jsp">확인하기</a>

</center>
</BODY>
</HTML>
