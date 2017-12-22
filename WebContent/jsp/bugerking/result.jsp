<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
	<article>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.BurgerkingBean" %>
<table style="width: 100px; height : 100px ;">
<jsp:useBean id="ham" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="coke" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="chip" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="apple" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="con" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="king" class="com.kabank.jee.domain.BurgerkingBean" scope="request"/>

	<tr>
	
<%	
	String hamburgerPrice = request.getParameter("ham");
	String cokePrice = request.getParameter("coke");
	String chipPrice = request.getParameter("chip");
	String applePrice = request.getParameter("apple");
	String conPrice = request.getParameter("con");
	String kingPrice = request.getParameter("king");
	
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String chipCount = request.getParameter("chip-count");
	String appleCount = request.getParameter("apple-count");
	String conCount = request.getParameter("con-count");
	String kingCount = request.getParameter("king-count");
	
	String place = request.getParameter("menu");
	
	ham.setMenu("햄버거");
	ham.setPrice(hamburgerPrice);
	ham.setCount(hamburgerCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	chip.setMenu("감자칩");
	chip.setPrice(chipPrice);
	chip.setCount(chipCount);
	
	apple.setMenu("그린애플");
	apple.setPrice(applePrice);
	apple.setCount(appleCount);
	
	con.setMenu("콘셀러드");
	con.setPrice(conPrice);
	con.setCount(conCount);
	
	king.setMenu("텐더킹");
	king.setPrice(kingPrice);
	king.setCount(kingCount);
	
	List<BurgerkingBean> list = new ArrayList<>();
	list.add(ham);	
	list.add(coke);	
	list.add(chip);	
	list.add(apple);	
	list.add(con);	
	list.add(king);	
	int res = 0;
	String total = "";
	for(BurgerkingBean s : list){	
		if(!s.getCount().equals("")){
%>
		주문한 품목 <%= s %> <br />
<%
			res += (Integer.parseInt(s.getCount()) * Integer.parseInt(s.getPrice())); 
		}
	}
	total = String.valueOf(res);
%>
	---------------------------------- <br />
		총 금액 <%= total %> <br />

		</tr>
	</table>	
	</article>
</section>
<%@ include file="../common/footer.jsp" %>
</body>
</html>