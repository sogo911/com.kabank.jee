<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.util.*" %>
<%
Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
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
		if(!s.equalsIgnoreCase("member")){
			exist = true;
			break;
		}
	}
		
	if(exist){
		stmt.executeUpdate("REATE TABLE Member("
				+"id VARCHAR2(20) PRIMARY KEY,"
				+"pass VARCHAR2(20),"
				+"name VARCHAR2(20),"
				+"ssn VARCHAR2(20),"
				+"phone VARCHAR2(20),"
				+"email VARCHAR2(20),"
				+"profile VARCHAR2(20),"
				+"addr VARCHAR2(20),"
							+")");
	}
					
				
	
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(stmt != null){
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
	}
	if(conn != null){
		try{conn.close();}catch(Exception e){e.printStackTrace();}
	}
}

%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>admin_create_table</title>
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/admin_add_member.css" />
</head>
<body>
<div id="wrapper">
	<header id="admin_header">
		<h1 >관리자페이지 메인</h1>
	</header>
	<aside id="admin_aside">
		<a id="member_mgmt_link">회원관리</a>
	</aside>
	<section id="admin_section">
		<h1>회원등록</h1>
		<table id="admin_section_table">
			<tr>
				<td>ID : </td>
				<td><input type="text"></input></td>
			</tr>
			<tr>
				<td>이 름 : </td>
				<td><input type="text"></input></td>
			</tr>
			<tr>
				<td>생년월일 : </td>
				<td><input type="date"></input></td>
			</tr>
			<tr>
				<td>성 별 : </td>
				<td><input style="width: 30px" type="text"></input></td>
			</tr>
			<tr>
				<td>핸드폰번호 : </td>
				<td>
					<input type="radio" name=tel value="SKT"/>SKT
					<input type="radio" name=tel value="KT" />KT
					<input type="radio" name=tel value="LG" />LG
					<select>
						<option value="">선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="02">02</option>
					</select> - <input style="width: 40px" pattern="[0-9]{4}" type="tel"/> - <input style="width: 40px" pattern="[0-9]{4}" type="text"/>
				</td>
			</tr>
			<tr>
				<td>이메일 : </td>
				<td><input type="email"></input>@<input type="text"></input>
					<select name="email" id="email">
						<option value="">직접입력</option>
						<option value="gmail.com">gamil.com</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="daum.net">daum.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>주 소 : </td>
				<td>
					<input style="width: 300px" type="text"/> 
					<input type="submit" value="주소 검색"/>
				</td>
			</tr>
			<tr>
				<td id="add_member_td" colspan="2">
				<button id="add_member_btn">추가</button>
				</td>
			</tr>
		</table>
	</section>
</div>		
</body>
<script src= "../../js/member.js"></script>
</html>