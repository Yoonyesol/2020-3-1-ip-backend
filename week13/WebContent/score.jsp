<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ����: score.jsp</title>
</head>
<body>
	<h2>JavaBeans�� �̿��� �л��� �̸��� ������ ����� ��ȸ ����</h2>
	<jsp:useBean id="score" class = "javabean.ScoreBean" scope = "page" />
	
	<hr>
	<h3>�̸��� ������ JavaBeans ScoreBean�� ����</h3>
	�̸�: <%= "�輺��" %>
	����: <%= "85" %>
	
	<jsp:setProperty name="score" property="name" value="�輺��"/>
	<jsp:setProperty name="score" property="point" value="85"/>
	
	<hr>
	<h3>JavaBeans ScoreBean�� ����� ������ ��ȸ ���</h3><p>
	�̸�: <jsp:getProperty name="score" property="name"/><br>
	����: <jsp:getProperty name="score" property="point"/><br>
</body>
</html>