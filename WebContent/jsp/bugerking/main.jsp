<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
	<header>
		<hgroup>
		<h1>버거킹 주문 하면</h1>
		<h6>상품과 수량을 선택해 주세요.</h6>
		</hgroup>
	</header>
</article>
	<article>
	<form id= "order_form" action="result.jsp">
				<table style="margin: 0 auto;">
					<tr> 
						<td>
						<figure>
						<img src="http://www.burgerking.co.kr/Content/menu/image/main/170913_SL_PC_detail_01_Si.jpg"
							style="width : 100px; height : 80px;" />
							<figcaption>
							햄버거 <br />
							<input type="checkbox" name="menu" value="ham"/>￦5500 <br />
							<input type="number" name="hamburger-count" min="1" max="10" /> 개
							</figcaption>
						</figure>
							</td>
						<td>
						<figure>
						<img src="../../ing/coke.jpg"
							style="width : 100px; height : 80px;" />
							<figcaption>
							코카콜라 <br />
							<input type="checkbox" name="menu" value="coke" />￦1000 <br />
							<input type="number" name="coke-count" min="1" max="10" /> 개
							</figcaption>
						</figure>	
							</td>
						<td>
						<figure>
						<img src="../../ing/텐더킹.jpg" 
							style="width : 100px; height : 80px;" />
							<figcaption>
							텐더킹 <br />
							<input type="checkbox" name="menu" value="king"/>￦1000 <br />
							<input type="number" name="king-count" min="1" max="10" /> 개
							</figcaption>
						</figure>
						</td>
					</tr>
					<tr>
						<td>
						<figure>
						<img src="../../ing/감자칩.jpg"
							style="width : 100px; height : 80px;" />
							<figcaption>
							감자칩 <br />
							<input type="checkbox" name="menu" value="chip"/>￦1000 <br />
							<input type="number" name="chip-count" min="1" max="10" /> 개
							</figcaption>
						</figure>
						</td>
						<td>
						<figure>
						<img src="../../ing/그린애플.jpg"
							style="width : 100px; height : 80px;" />
							<figcaption>
							그린애플 <br />
							<input type="checkbox" name="menu" value="apple" />￦900 <br />
							<input type="number" name="apple-count" min="1" max="10" /> 개
							</figcaption>
						</figure>
							</td>
						<td>
						<figure>
						<img src="../../ing/콘셀러드.jpg"
							style="width : 100px; height : 80px;" />
							<figcaption>
							콘셀러드 <br />
							<input type="checkbox" name="menu" value="con" />￦1200 <br />
							<input type="number" name="con-count" min="1" max="10" /> 개
							</figcaption>
						</figure>	
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<input type="radio" name="place" value="here" checked /> 매장식사
							<input type="radio" name="place" value="takeout" /> 테이크아웃
						</td>
					</tr>
					<tr>
						<td colspan="3">							
					 		<input type="hidden" name="ham" value="5500" />
							<input type="hidden" name="coke" value="1000" />
							<input type="hidden" name="chip" value="1000" />
							<input type="hidden" name="apple" value="900" />
							<input type="hidden" name="con" value="1200" />
							<input type="hidden" name="king" value="1000" />
							<input id= "bugerking_order_btn" type="button" value="전송"/>
							<!-- <input type="text" name="count" style="width: 50px;" placeholder= "수 량" /> -->
						</td>
					</tr>
					
				</table>
	</form>	
	</article>
</section>						
<%@ include file="../common/footer.jsp" %>
</body>
<script src="../../js/bugerking/main.js"></script>
</html>