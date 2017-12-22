/**
 * 
 */
function init() {
	var idcheckDuplBtn = document.querySelector('#id_check_dupl_btn');
	var checkDuplBtn = document.querySelector('#check_dupl_btn');
	
	idcheckDuplBtn.addEventListener("click",idcheckDuplclick,false);
	checkDuplBtn.addEventListener("click",checkDuplclick,false);
}
function idcheckDuplclick(e) {
	
	alert('사용이 가능하신 ID 입니다.');
	e.preventDefault();
}
function checkDuplclick(e) {
	var joinId = document.querySelector('#join_id').value;
	var joinPass = document.querySelector('#join_pass').value;
	alert(joinId +'님 가입을 축하드립니다.');
	sessionStorage.setItem('id',joinId);
	sessionStorage.setItem('pass',joinPass);
	
}
window.addEventListener("load",init,false);