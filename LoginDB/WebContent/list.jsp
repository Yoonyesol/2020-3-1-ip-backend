<!-- /* list.jsp */  -->



<%@ page  contentType="text/html;charset=utf-8" import="java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정



String DB_URL = "jdbc:mysql://localhost:3306/log_db?characterEncoding=UTF-8&serverTimezone=UTC";

		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(web01)



String DB_USER = "root"; // web01 데이터베이스에 접근하는 아이디

String DB_PASSWORD= "23er"; // password



Connection conn= null;

Statement stmt = null;

ResultSet rs   = null;



try {

    

    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득



    

    stmt = conn.createStatement(); // 상태 확인



    

    String query = "SELECT idx, id, pwd, name, email FROM log_info"; // DB에 전송할 쿼리문 생성 목록을 나타내기 위해 SELECT문을 사용했습니다. 

    rs = stmt.executeQuery(query); // 쿼리문 실행!



%><table border="1" cellspacing="0">

<tr>
<td>Number</td>
<td>ID</td>
<td>password</td>
<td>Name</td>
<td>Email</td>

<TD>비고 </TD>

</tr>

<%

    while(rs.next()) {

%><tr>

<td><%= rs.getInt("idx") /* 파라미터값을 직접 넣어줘 출력시켜도 되구요 */%></td>

<td><%=rs.getString(2)%></td>

<td><%= rs.getString("pwd") /* 숫자를 부여하여 몇번째 데이터 값인지 출력해도 되네요. */%></td>

<td><%=rs.getString(4)%></td>

<td><%=rs.getString(5)%></td>



<TD>

<A href="delete-do.jsp?idx=<%=rs.getInt("idx")%>">삭제</A> <!-- delete-do.jsp링크를 이용하여 해당 테이블의 데이터들을 삭제합니다. -->



<INPUT type="button" value="수정"

	onClick="location.href='modify.jsp?idx=<%=rs.getInt("idx")%>'"> <!-- modify.jsp로 이동하여 해당 테이블의 데이터값들을 수정하도록 합니다. -->

</TD>



</tr>

<%

    } // end while

%></table>

<%



	rs.close();     // ResultSet 종료



    stmt.close();     // Statement 종료



    conn.close(); 	// Connection 종료



} catch (SQLException e) { // 예외처리

      out.println("err:"+e.toString());

} 

%>

<A href="input.jsp">저장</A>

<%-- 

<%@ page  contentType="text/html;charset=utf-8" 
import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정
String DB_URL = "jdbc:mysql://localhost:3306/log_db?characterEncoding=UTF-8&serverTimezone=UTC";
		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(web01)
String DB_USER = "root"; // web01 데이터베이스에 접근하는 아이디
String DB_PASSWORD= "23er"; // password

Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득
    stmt = conn.createStatement(); // 상태 확인
    String query = "SELECT idx, userid, pwd, name, email FROM log_info"; // DB에 전송할 쿼리문 생성 목록을 나타내기 위해 SELECT문을 사용했습니다. 
    rs = stmt.executeQuery(query); // 쿼리문 실행!

%><table border="1" cellspacing="0">

<tr>
<td>Number</td>
<td>UserID</td>
<td>password</td>
<td>Name</td>
<td>Email</td>
</tr>

<%
    while(rs.next()) {

%><tr>
<td><%= rs.getInt("idx") /* 파라미터값을 직접 넣어줘 출력시켜도 되구요 */%></td>
<td><%=rs.getString("userid")%></td>
<td><%= rs.getString("pwd") /* 숫자를 부여하여 몇번째 데이터 값인지 출력해도 되네요. */%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>

<TD>
<A href="delete-do.jsp?idx=<%=rs.getInt("idx")%>">삭제</A> <!-- delete-do.jsp링크를 이용하여 해당 테이블의 데이터들을 삭제합니다. -->

<INPUT type="button" value="수정"
	onClick="location.href='modify.jsp?idx=<%=rs.getInt("idx")%>'"> <!-- modify.jsp로 이동하여 해당 테이블의 데이터값들을 수정하도록 합니다. -->
</TD>

</tr>

<%
    } // end while

%></table>

<%
	rs.close();     // ResultSet 종료
    stmt.close();     // Statement 종료
    conn.close(); 	// Connection 종료

} catch (SQLException e) { // 예외처리

      out.println("err:"+e.toString());
} 
%>

<A href="input.jsp">저장</A> --%>