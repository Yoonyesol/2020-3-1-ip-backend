<%@ page contentType="text/html;charset=euc-kr" 
	import="java.io.*"
%>

<HTML>
<HEAD><TITLE> </TITLE></HEAD>
<BODY>
<center>
<H2>application ����</H2>
<HR>
1. �������� : <%= application.getServerInfo() %> <BR>
2. ���� API �������� : 
    <%= application.getMajorVersion() 
    +"."+application.getMinorVersion() %> <BR>
3. application.jsp ȭ���� ������� :
<%= application.getRealPath("application.jsp") %> <BR>

<HR>
setAttribute �� username ������ "ȫ�浿" ����<P>
<% application.setAttribute("username","ȫ�浿"); 
	   application.log("username=ȫ�浿");
%>

<a href="application_result.jsp">Ȯ���ϱ�</a>

</center>
</BODY>
</HTML>
