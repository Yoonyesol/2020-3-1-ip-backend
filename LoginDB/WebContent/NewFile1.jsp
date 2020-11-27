<!-- /* save_do.jsp */-->
<%@ page contentType="text/html;charset=utf-8"

	import="java.sql.*" %>

<%

	request.setCharacterEncoding("utf-8");

	

	String id = request.getParameter("id"); // input.jsp에서 입력받은 값들을 받아옵니다.

	String name = request.getParameter("name");

	String pwd = request.getParameter("pwd");

	

	try

	{

		Class.forName("com.mysql.jdbc.Driver");

		String DB_URL = "jdbc:mysql://localhost:3306/web01?characterEncoding=UTF-8&serverTimezone=UTC"; // 아까 예제에서와 마찬가지로 url을 설정하죠

		

		Connection con = DriverManager.getConnection(DB_URL, "root", "23er");

		

		String sql = "INSERT INTO member(id,name,pwd) VALUES(?,?,?)"; // sql문 작성(id와 name, pwd값들을 보내기위한 작업)

		

		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,id); // values에 들어갈 각각의 id, name, pwd 설정

		pstmt.setString(2,name);

		pstmt.setString(3,pwd);

		

		pstmt.executeUpdate(); // sql문 실행(회원추가 실행)

		

		pstmt.close();

		con.close();

	}

	catch(ClassNotFoundException e) // 예외처리

	{

		out.println(e);

	}

	catch(SQLException e)

	{

		out.println(e);

	}

	response.sendRedirect("NewFile2.jsp"); // 다시 list.jsp를 실행시켜 새로운 정보를 업데이트 시킵니다.

%>

