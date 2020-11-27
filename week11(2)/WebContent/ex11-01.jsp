<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 입력 폼</title>
</head>
<body>
<form action = ex11-02.jsp method = post>
	<table border= "1">
	<caption>로그인 입력화면</caption>
	<tr><td align = "center">아이디</td><td><input name="id" type="text"></td>
	<tr><td align = "center">비밀번호</td><td><input name="pwd" type="password"></td>
	<tr><td align = "center"><input type="submit" value="로그인">
			<input type="reset" value="취소"></td></tr>
  </table>
</form>
</body>
</html>