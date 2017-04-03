<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" charset="UTF-8">

<title>商户版-注册</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container " style="height:100%;width:100%;padding:0px;">
	<div class="row clearfix" style="width:100%;height:100%;margin:0px;">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column" style="background:#f3f3f3;">
			<form role="form" action="reg-todatabase.jsp" method="post">
			<br>
				<div class="form-group">
					 <label for="exampleInputEmail1">营业执照</label><input type="text" class="form-control" name="reg-shopid"   placeholder="请输入您的营业执照号"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">店铺名称</label><input type="text" class="form-control" name="reg-shop"  placeholder="请输入您的店铺名称"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">法人姓名</label><input type="text" class="form-control" name="reg-legalperson"  placeholder="请再次输入法人姓名"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputEmail1">身份证号</label><input type="text" class="form-control" name="reg-idcard"  placeholder="请输入您的身份证号码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">登录密码</label><input type="password" class="form-control" name="reg-pwd" placeholder="请输入您的登录密码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">确认密码</label><input type="password" class="form-control" name="reg-pwd2" placeholder="请再次输入您的登录密码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">收款卡开户行总行</label><input type="text" class="form-control" name="reg-bank" placeholder="请输入您的银行卡开户行总行"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">开户行详细信息</label><input type="text" class="form-control" name="reg-bankinfo" placeholder="请输入您的开户行详细信息"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">银行卡号</label><input type="text" class="form-control" name="reg-bankcard" placeholder="请输入您的银行卡号码"/>
				</div>
				
				<div class="form-group">
					 <label for="exampleInputtext1">开户人姓名</label><input type="text" class="form-control" name="reg-accountperson" placeholder="请输入您的姓名"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">手机号码</label>
					 <input type="text" class="form-control" name="reg-phone" placeholder="请输入您的手机号码"/>
					 <button type="button" class="checkCode" id="btn">点击获取手机验证码</button>
					 
					 
					 
				</div>
				<div class="form-group">
					 <label for="exampleInputtext1">短信验证码</label><input type="text" class="form-control" id="exampleInputtext9" placeholder="请输入您手机收到的验证码"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">身份证照片上传</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						请上传正反面照片以及手持证件照。
					</p>
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">银行卡照片上传</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						请上传银行卡正面照片。
					</p>
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">执照上传</label><input type="file" id="exampleInputFile" />
					<p class="help-block">
						请上传执照。
					</p>
				</div>
				

				
				
				
				<button type="submit" class="btn btn-default">保存并提交</button>
				<button type="reset" class="btn btn-default">取消</button>
				<br><br><br><br>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>





<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


</body>

</html>