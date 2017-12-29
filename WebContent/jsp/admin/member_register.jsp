<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"/>
<%
Connection conn=null;
Statement stmt = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager
			.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setPass(request.getParameter("pass"));
	member.setName(request.getParameter("name"));
	member.setSsn(request.getParameter("ssn"));
	member.setPhone(request.getParameter("phone"));
	member.setProfile("default_profile.jpg");
	member.setEmail(request.getParameter("email"));
	member.setAddr(request.getParameter("addr"));
	String sql = String.format(
			"INSERT INTO Member ("
			+"id , "
			+"pass , "
			+"name , "
			+"ssn , "
			+"phone,"
			+"profile,"
			+"email,"
			+"addr"
			+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",	//여러개의 복수라서 벨류S 를한다			
				member.getId(),
				member.getPass(),
				member.getName(),
				member.getSsn(),
				member.getPhone(),
				member.getProfile(),
				member.getEmail(),
				member.getAddr()
			);
	
	stmt.executeUpdate(sql);
}catch(Exception e){e.printStackTrace();}

		
				//SQL은 리터럴이 '(싱글쿼터)만 허용.
				//JAVA에서는 리터럴이 "(더블쿼터)만 허용.
				//JS(자바스크립트)에서는 리터럴이 '," 두개 다 허용한다.
	  
	 pageContext.forward("member_list.jsp"); 
%>

	<%-- ID : <%= member.getId()%>
	비번 : <%= member.getPass()%>
	이름 : <%= member.getName()%>
	생일 : <%= member.getSsn()%>
	성별 : <%= member.getGender()%>
	폰 : <%= member.getPhone()%>
	프로필 : <%= member.getProfile()%>
	이메일 : <%= member.getEmail()%>
	주소 : <%= member.getAddr()%> --%>
