<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입력 폼2</title>
</head>
<body>

<h2>성별과 좋아하는 과목 조사</h2>
<br>

<form method="post" action="04.jsp">
	1.성별을 선택하세요.[Radio버튼]<p>
		남자 <input type = "radio" name ="sex" value = "남자" checked>
		여자 <input type = "radio" name ="sex" value = "여자"><p>
	2.좋아하는 과목을 선택하세요.[Checkbox]<p>
		SQL응용 <input type="checkbox" name="subj" value="SQL응용"><br>
		DB개발도구 <input type="checkbox" name="subj" value="DB개발도구"><br>
		JSP <input type="checkbox" name="subj" value="JSP"><br>
		오라클실무 <input type="checkbox" name="subj" value="오라클실무"><br>
		ERP구축 <input type="checkbox" name="subj" value="ERP구축"><br>
	<input type="submit" value="보내기">
	<input type="reset" value="취소">
</form>

</body>
</html>