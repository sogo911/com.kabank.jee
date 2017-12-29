/**
 * 
 */
function init() {
	document.querySelector('#member_register_form_btn')
		.addEventListener("click",memberRegister,false);
}
function memberRegister() {
	location.href = "member_register_form.jsp";
}
window.addEventListener("load",init,false);