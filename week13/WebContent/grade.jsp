<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ����: grade.jsp</title>
</head>
<body>
	<h2>JavaBeans�� �̿��� �л��� ������ ���� ���� ó�� ����</h2>
	<% request.setCharacterEncoding("euc-kr"); %>
	<jsp:useBean id="score" class="javabean.GradeBean" scope="page"/>
	
	<hr>
	<h3>������ ���޹��� �̸��� ������ JavaBeans ScoreBean�� ����</h3>
	�̸�: <%= request.getParameter("name") %>
	����: <%= request.getParameter("point") %>
	<jsp:setProperty name="score" property="name" param="name"/>
	<jsp:setProperty name="score" property="point" param="point"/>
	
	<hr>
	<h3>JavaBeans ScoreBean�� ����� ������ ��ȸ ���</h3><p>
	�̸�: <jsp:getProperty name="score" property="name"/><br>
	����: <jsp:getProperty name="score" property="point"/><br>
	���: <jsp:getProperty name="score" property="grade"/><br>
</body>
</html>