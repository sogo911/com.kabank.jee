<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JDBC TEST</title>
</head>
<body>
	<% 
		String count = "";
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager
				.getConnection // 겟 커넥션 (연결하다.)
				("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
		
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM tab";
		ResultSet rs = stmt.executeQuery(sql); // 익스큐트쿼리 (실행하다.)
		
		while(rs.next()){
			count = rs.getString("tname");  // 겟 스트링 (결과 전송)
		}
	%>
	테이블 갯수는 <%= count %> 입니다.
	<%
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>