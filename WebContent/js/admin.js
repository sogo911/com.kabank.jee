/**
 * 
 */
function init() {
	var goAdminCreateBtn = document.querySelector('#go_admin_create_btn');
	goAdminCreateBtn.addEventListener("click",goAdminCreate,false);
}
function goAdminCreate() {
	var table = prompt('테이블명 입력');
	alert(table+'이 맞으십니까?');
	location.href = ("member.jsp");
}
window.addEventListener("load",init,false);