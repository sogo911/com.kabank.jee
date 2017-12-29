<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>	
<%@ include file="../common/nav.jsp" %>
<section>
<article>
	<form action="result.jsp">
	구매 금액 : <input type="text" placeholder="장 당 1,000원 최대 5장" />
	<input type="submit" value="전송" />
	</form>
</article>
</section>
<aside></aside>

<%@ include file="../common/footer.jsp" %>
</body>
<script src="../js/lotto/main.js"></script>
</html>