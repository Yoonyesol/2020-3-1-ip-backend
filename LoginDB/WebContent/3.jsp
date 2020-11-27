<%@ page  contentType="text/html;charset=utf-8" import="java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver"); // JDBC연결을 위한 Class이름 설정



String DB_URL = "jdbc:mysql://localhost:3306/logindb?characterEncoding=UTF-8&serverTimezone=UTC";

		// 기본설정된 포트 3306으로 하고 사용할 db의 이름을 적어준다(web01)



String DB_USER = "root"; // web01 데이터베이스에 접근하는 아이디

String DB_PASSWORD= "23er"; // password



Connection conn= null;

Statement stmt = null;

ResultSet rs   = null;



try {

    

    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD); // 연결자 획득



    

    stmt = conn.createStatement(); // 상태 확인



    

    String query = "SELECT idx, name, gender, hobby, contact FROM log_info1"; // DB에 전송할 쿼리문 생성 목록을 나타내기 위해 SELECT문을 사용했습니다. 

    rs = stmt.executeQuery(query); // 쿼리문 실행!



%><table border="1" cellspacing="0">

<tr>
<td>Number</td>
<td>이름</td>
<td>성별</td>
<td>취미</td>
<td>연락처</td>

</tr>

<%

    while(rs.next()) {

%><tr>

<td><%= rs.getInt("idx") /* 파라미터값을 직접 넣어줘 출력시켜도 되구요 */%></td>

<td><%=rs.getString(2)%></td>

<td><%= rs.getString(3) /* 숫자를 부여하여 몇번째 데이터 값인지 출력해도 되네요. */%></td>

<td><%=rs.getString(4)%></td>

<td><%=rs.getString(5)%></td>


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

<A href="1.jsp">입력페이지로 돌아가기</A>