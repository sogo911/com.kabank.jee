<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import= "java.util.*" %>
<%
Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql = "";
try{
	Class.forName("oracle.java.driver.OracleDriver");
	conn = DriverManager
			.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = "SELECT * FROM tab";
	rs = stmt.executeQuery(sql);
	List<String> list = new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;
	for(String s : list){
		if(s.equalsIgnoreCase("attend")){
			exist = true;
			break;
		}
	}
		
	if(!exist){
		stmt.executeUpdate("CREATE TABLE Attend("
				+"id VARCHAR2(20) PRIMARY KEY,"
				+"week VARCHAR2(10),"
				+"status VARCHAR2(10)"
				+")"); 
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<head>
<link rel="stylesheet" href="../../css/common.css" />
<link rel="stylesheet" href="../../css/bitcamp.css" />
</head>
<body>
<%@ include file="../common/header.jsp" %>	
<%@ include file="../common/nav.jsp" %>
<div id="wrapper">
<form id="main_form" action="result.jsp">
<section>
<article>
	<h1>비트캠프 메인</h1>
	<table>
		<tr>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
		</tr>
		<tr>
			<td>
			<select name="monday" id="">
			<option value="a">결석</option>
			<option value="b">지각</option>
			<option value="c">조퇴</option>
			<option value="d">출석</option>
			</select>
			</td>
			<td>
			<select name="tuesday" id="">
			<option value="a">결석</option>
			<option value="b">지각</option>
			<option value="c">조퇴</option>
			<option value="d">출석</option>
			</select>
			</td>
			<td>
			<select name="wednesday" id="">
			<option value="a">결석</option>
			<option value="b">지각</option>
			<option value="c">조퇴</option>
			<option value="d">출석</option>
			</select>
			</td>
			<td>
			<select name="thursday" id="">
			<option value="a">결석</option>
			<option value="b">지각</option>
			<option value="c">조퇴</option>
			<option value="d">출석</option>
			</select>
			</td>
			<td>
			<select name="friday" id="">
			<option value="a">결석</option>
			<option value="b">지각</option>
			<option value="c">조퇴</option>
			<option value="d">출석</option>
			</select>
			</td>
		</tr>
		<tr>
			<td colspan = "5">
				<input type="hidden" name="id" value="sogo911"/>
				<button id="attend_result_btn" >확 인</button>
			</td>
		</tr>
	</table> 

</article>
</section>
</form>
<%@ include file="../common/footer.jsp" %>
</div>
</body>
<script src="../../js/bitcamp/main.js"></script>
</html>