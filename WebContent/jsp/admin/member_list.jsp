<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.util.*" %>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<%
Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql = "";
List<MemberBean> result = new ArrayList<>();
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
		if(s.equalsIgnoreCase("member")){
			exist = true;
			break;
		}
	}
		
	if(!exist){
		stmt.executeUpdate(
				"CREATE TABLE Member("
				+"id VARCHAR2(20) PRIMARY KEY,"
				+"pass VARCHAR2(20),"
				+"name VARCHAR2(20),"
				+"ssn VARCHAR2(20),"
				+"phone VARCHAR2(20),"
				+"email VARCHAR2(20),"
				+"profile VARCHAR2(20),"
				+"addr VARCHAR2(20)"
							+")");
	}else{
		rs = stmt.executeQuery(
			"SELECT id, pass, name, ssn, phone, email, profile, addr"+
			" FROM Member;");
		
		while(rs.next()){			//rs.next()있는 만큼만 돌리는 것.
			MemberBean m = new MemberBean();
			String id = rs.getString("id");
			String name = rs.getString("name");
			String ssn = rs.getString("ssn");
			String phone = rs.getString("phone");
			String email = rs.getString("email");
			String addr = rs.getString("addr");
			m.setId(id);
			m.setName(name);
			m.setName(ssn);
			m.setName(phone);
			m.setName(email);
			m.setName(addr);
			result.add(m);
		}
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
	<link rel="stylesheet" href="../../css/admin_main.css" />
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
		<h1>회원관리</h1>
		<table id="admin_section_table">
			<tr>
			<td id="member_search" colspan="8">
				<select style="margin 0px auto;" name="menu">
				<option value="">검색</option>
				<option value="name">이름</option>
				<option value="gender">성별</option>
				</select>
				<input type="text" placeholder="검색어 입력" />
				<button>검색</button>
			</td>
			</tr>
			<tr>
				<th>NO</th>
				<th>ID</th>
				<th>이 름</th>
				<th>생년월일</th>
				<th>성 별</th>
				<th>핸드폰번호</th>
				<th>이메일</th>
				<th>주 소</th>
			</tr>
			<%
			for(int i=0; i<result.size(); i++){
				%>
				<tr>
					<td>00</td>
					<td><%= result.get(i).getId()%></td>
					<td><%= result.get(i).getName()%></td>
					<td><%= result.get(i).getSsn()%></td>
					<td><%= result.get(i).getPhone()%></td>
					<td><%= result.get(i).getEmail()%></td>
					<td><%= result.get(i).getAddr()%></td>
				</tr>
			<%	
			}
			%>
			
			<tr>
				<td id="add_member_td" colspan="8">
					<button id="member_register_form_btn">추가</button>
				</td>
			</tr>
		</table>
	</section>
</div>		
</body>
<script src= "../../js/admin/member_list.js"></script>
</html>