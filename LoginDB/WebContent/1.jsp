<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<HTML>
<meta charset="utf-8">
<HEAD><TITLE>회원 입력</TITLE></HEAD>
<BODY>
<FORM action="2.jsp" method="post">
<font color=gray>
이름 : <INPUT type="text" name="name"              maxlength="8"><BR>
성별 :    <INPUT type="text" name="gender"  maxlength="8"><BR>
취미 :    <INPUT type="text" name="hobby"         maxlength="12"><BR>
전화번호 : <INPUT type="text" name="contact"         maxlength="25"><P>
<INPUT type="submit" value=" 저 장 "> <INPUT action="3.jsp" method = "post" type="submit" type="submit" value="회원정보 조회 "></font>  
</FORM>
</BODY>
</HTML>