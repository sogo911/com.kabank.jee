<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"/>
<%
member.setId(request.getParameter("id"));
member.setPass(request.getParameter("pass"));
member.setName(request.getParameter("name"));
member.setSsn(request.getParameter("ssn"));
member.setGender(request.getParameter("gender"));
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
		+"gender,"
		+"phone,"
		+"profile,"
		+"email,"
		+"addr"
		+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s')",	
		member.getId(),
		member.getPass(),
		member.getName(),
		member.getSsn(),
		member.getGender(),
		member.getPhone(),
		member.getProfile(),
		member.getEmail(),
		member.getAddr()
	);
		
/* pageContext.forward("../index.jsp"); */
%>
ID : <%= member.getId()%>
	비번 : <%= member.getPass()%>
	이름 : <%= member.getName()%>
	생일 : <%= member.getSsn()%>
	성별 : <%= member.getGender()%>
	폰 : <%= member.getPhone()%>
	프로필 : <%= member.getProfile()%>
	이메일 : <%= member.getEmail()%>
	주소 : <%= member.getAddr()%>