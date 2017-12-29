/**
 * 
 */
function init() {
	var arr=['bugerking','kakao','bitcamp','sktellecom','lotto'];
	document.querySelector('#attend_result_btn')
		.addEventListener("click",attendResult,false);
	for(var i = 0; i<arr.length; i++){
		document.querySelector('#'+arr[i]).addEventListener('click',
				function(e){
			location.href="../"+this.id+"main.jsp";
		},false);
	}
}
function attendResult() {
	document.querySelector('#main_form').submit();
}
window.addEventListener("load", init, false);