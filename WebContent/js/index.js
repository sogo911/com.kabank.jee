/**
 * 
 */ 
function init() {
	var goAdminLink = document.querySelector('#go_admin_link');
	var goJoinLink = document.querySelector('#go_join_link');
	var indexLoginBtn = document.querySelector('#index_login_btn');
	goAdminLink.addEventListener("click",goAdmin,false);
	goJoinLink.addEventListener("click",goJoin,false);
	indexLoginBtn.addEventListener("click",indexLogin,false);
}
function indexLogin(e) {
	var loginId = document.querySelector('#index_input_id').value;
	var loginPass = document.querySelector('#index_input_pw').value;
	var joinId = sessionStorage.getItem('id');
	var joinPass = sessionStorage.getItem('pass');
	
	if(!(loginId === joinId )){
		e.preventDefault();
		alert('입력하신 '+loginId+'는 틀립니다.');
	}else if(!(loginPass === joinPass)){
		e.preventDefault();
		alert('비밀번호가 틀렸습니다.')
	}else{
		alert(joinId+'님 환영합니다.');
	}
}
function goAdmin() {
	var admin = prompt('이름 ?');
	if (admin) {
		alert('안녕하세요 관리자님');
		location.href = ("bugerking/main.jsp");   // 이방식을 통해서 URL을 옮기게 한다.
	}else
		alert('관리자만 접근이 가능 합니다.');
}
function goJoin() {
	location.href = ("member/join.jsp"); 
}
window.addEventListener("load",init,false)




/*window.onload = clicMe;  이벤트 핸들러 방식
function clicMe() {
	document.querySelector('#check_admin').onclick = showalert;
	document.querySelector('#go_join').onclick = go_join;
	document.querySelector('#go_home').onclick = go_home;
}
function showalert() {
	var admin = prompt('이름 ?');
	if (admin) {
		alert('안녕하세요 관리자님');
		location.href = ("bugerking/main.jsp");   // 이방식을 통해서 URL을 옮기게 한다.
	}else
		alert('관리자만 접근이 가능 합니다.');
}
function go_join(){
	location.href = ("member/join.jsp"); 
}
function go_home() {
	location.href = ("index.jsp");
}*/ 