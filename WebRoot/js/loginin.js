$(function(){
	$("#submit").click(function(){
		check_stuNum_psw();
	});
	//将提示框隐藏
	$("#wrong-info").fadeIn("fast").delay(3000).fadeOut("fast");
});
//检查学号与密码是否有空
function check_stuNum_psw(){
	var stuNum=$("#stuNum").val();
	var psw=$("#psw").val();
	if(stuNum==""||psw==""){
		alert("请输入用户名密码");
		return;
	}else{
		$("#submit").attr("type","submit");
	}
}

