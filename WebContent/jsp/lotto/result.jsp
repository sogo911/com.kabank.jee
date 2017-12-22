<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
<%@ page import="com.kabank.jee.domain.LottoBean" %>
<%@ page import="java.util.*" %>

<%! 
public int countRow(String money){
	int count = 0;
	return count;
}
	public List<LottoBean> createLottos(int count){
		List<LottoBean> list = new ArrayList<>();
		return list;
}
	public int[] createLotto(){
		int[] lotto = new int[6];
		lotto[0] = ((int)(Math.random()*45)+1);
		return lotto;
	}
%>
<div>
<%
	int count = countRow("5000");
	for(LottoBean lot : createLottos(count)){
		%>
		<%= lot.getLottoNum() %>
		<%
	}

%>
	 2017 - 12 - 19
	1 12 13 32 38 45
	1 12 13 32 38 45
	1 12 13 32 38 45
	1 12 13 32 38 45
	1 12 13 32 38 45
</div>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp" %>
</body>
</html>