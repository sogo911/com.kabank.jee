/**
 * 
 */
function init() {
	document.querySelector('#add_member_btn')
		.addEventListener("click",addMember,false);
}
function addMember() {
	alert('추가하시겠습니까?');
}
window.addEventListener("load",init,false);