<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="shortcut icon" href="../ing/Penguin_4.ico"/>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
	<script src="../js/index.js"></script>
</head>
<body>
<div id="wrapper">
	<header id="index_header">
		<a id="go_home" href="#">HOME</a>
		<h1>BIT CAMP SAMPLE REPORT</h1>
	</header>
	<section>
		<article>
			<table id="index_table">
				<tr>
					<td id = index_join colspan="5">
						<form action="bugerking/main.jsp">
							<table id="index_login_box" >
			 					<tr>
			 						<td> 
			 						<input id="index_input_id" type="text" name="id" placeholder="id"/>
			 						</td>
			 						<td id="index_input_btn" rowspan="2">
				 						<button id="index_login_btn">로그인</button>
									</td>
			 					</tr>
			 					<tr>
			 						<td >
			 						<input id="index_input_pw" type="password" name="pw" placeholder="pw"/>
			 						</td>
			 					</tr>			 				
			 				</table>
						</form>
						<a id="go_admin_link" href="#">
							관리자
						</a> <br />
						<a id="go_join_link" href="#">
							회원가입
						</a>
					</td>
				</tr>
			</table>	
		</article>
	</section>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>