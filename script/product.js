function productCheck(){
	if(document.frm.productname.value.length==0){
		alert("상품명을 입력")
		frm.name.focus();
		return false;
		
	 }
	if(document.frm.price.value.length==0){
		alert("가격을 입력")
		frm.price.focus();
		return false;
		
	 }
	if(isNAN(document.frm.price.value)){
		alert("숫자로 입력")
		frm.price.focus();
		return false;
		
	 }
	return ture;
}