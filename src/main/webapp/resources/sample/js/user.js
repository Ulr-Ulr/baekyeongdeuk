/* 자바스크립트 시작 */
/* 네이티브(오리지날) 자바스크립트로 햄버거메뉴 액션 구현 (아래)
 함수의 기본형은 아래 */
/* function Add(a, b) {
	var sum = a+b;
	alert(a + "더하기" + b + " 는" + sum + "입니다.");
}
*/
/* Add(3,5);//함수 실행하기
j쿼리 기본형식사용 */
$(document).ready(function(){
	$(".menu-toggle-btn").click(function(){
		//alert("click to hamberger from jquery")디버그
		$(".gnb").stop().slideToggle("fast");
	});
});
/* $(document).ready(function() {// $제이쿼리가 시작한다는 의미(index.html).ready(자동콜백함수실행)
	$(".menu-toggle-btn").click(function(){
		alert('햄버거메뉴를 클릭하셨습니다.');
	});
}); */
/* window.onload = document_ready;//문서를 미리 읽어들이고, 함수를 실행합니다.j쿼리의 $(document).ready() 함수 대신 사용 
function document_ready() {
	var menu_toggle_btn = document.getElementsByClassName("menu-toggle-btn");
	menu_toggle_btn[0].onclick = function() {
		alert('네이티브 js로햄버거 메뉴를 클릭하셨습니다.');
	}
	 
} */


