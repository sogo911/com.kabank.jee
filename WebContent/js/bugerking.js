/**
 */
function init() {
	var arr=['bugerking','kakao','bitcamp','sktellecom','lotto'];
	for(var i = 0; i<arr.length; i++){
		document.querySelector('#'+arr[i]).addEventListener('click',
				function(e){
			location.href="../"+this.id+"main.jsp";
		},false);
	}
	document.querySelector('#bugerking_order_btn')
	.addEventListener('click',oder,false);
}
function order(){
	document.querySelector('#order_from').submit();
}
window.addEventListener("load",init,false);