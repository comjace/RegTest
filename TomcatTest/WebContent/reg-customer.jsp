<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
    
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" charset="UTF-8">

<title>个人版-注册</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

<script>

function show(){
document.getElementById("merchant").style.display="";
//alert(document.getElementById("div").style.display)
}
function hidden(){
document.getElementById("merchant").style.display="none";
//alert(document.getElementById("div").style.display)
}
</script>







					

</head>
<body>

<div class="container " style="height:100%;width:100%;padding:0px;">
	<div class="row clearfix" style="width:100%;height:100%;margin:0px;">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column" style="background:#f3f3f3;">
			<form role="form" action="reg-secondstep.jsp"  name="regtodatabase"method="post">
			<a><label >个人信息</label></a><hr style="width:100%;margin-top:0px;color:#000;zise=5"/>
				<div class="form-group">
					 <label for="exampleInputEmail1">身份证号</label><input type="text" class="form-control" name="reg-idcard"  placeholder="请输入您的身份证号码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">登录密码</label><input type="password" class="form-control" name="reg-pwd" placeholder="请输入您的登录密码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">确认密码</label><input type="password" class="form-control" name="reg-pwd2" placeholder="请再次输入您的登录密码"/>
				</div>
				<a><label>收款卡信息</label></a><hr style="width:100%;margin-top:0px;color:#000"/>
				<div class="form-group">
					<label for="exampleInputtext1">收款卡开户行总行</label><input type="text" class="form-control" name="reg-bank" placeholder="请输入银行卡开户行总行"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">开户行详细信息</label><input type="text" class="form-control" name="reg-bankinfo" placeholder="请输入开户行详细信息"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">银行卡号</label><input type="text" class="form-control" name="reg-bankcard" placeholder="请输入银行卡号码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">开户人姓名</label><input type="text" class="form-control" name="reg-accountperson" placeholder="请输入开户人的姓名"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">手机号码</label>
					 <input type="text" class="form-control" name="reg-phone" placeholder="请输入银行卡 预留手机号码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">短信验证码</label>
				</div>
				<div class="form-group">
					 <input type="text"  id="exampleInputtext9" placeholder="请输入验证码" style="width:43%"/>
					
					<button type="button" class="checkCode" id="btn" style="width:53%">获取验证码</button>
				</div>
				<br>
				<div class="form-group" id="merchant" style="display: none">
					<label for="exampleInputtext1">Shopid</label><input type="text" class="form-control" name="reg-shopid" placeholder="请输入银行卡开户行总行"/>
				</div>
				
					
				<button type="button" class="btn btn-default" onClick="location.href='index.jsp'">返回上一步</button>
				<button type="submit" class="btn btn-default" >下一步</button>
				
				<br><br><br><br>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>



<!-- 
<script type="text/javascript" src="js/savepush.js"></script>
 -->
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>



</body>

</html>