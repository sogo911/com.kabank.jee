/**
 * 
 */
function init() {
	var arr=['bugerking','kakao','bitcamp','sktellecom','lotto'];
	for(var i = 0; i<arr.length; i++){
		document.querySelector('#'+arr[i]).addEventListener('click',
				function(e){
			location.href="../"+this.id+"main.jsp";
		},false);
	}
}
function move() {
	
}
window.addEventListener("load", init, false);