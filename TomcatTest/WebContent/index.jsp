<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎选择宝付BB卡</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

<style>
*{
padding:0;
margin:0;
box-sizing:border-box;}
html,body{
    height:100%;
	width:100%;
	overflow:hidden 
}
</style>

</head>
<body>

<div class="container " style="height:100%;width:100%;padding:0px;">
	<div class="row clearfix" style="background:#fafafa;width:100%;height:100%;margin:0px;">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column" style="background:#f3f3fa;text-align:center;flaot:0px;height:100%">
			<div style="height:78%">
				<br><br>
				<label style="float:left;">宝付BB卡</label>
		
			</div>
			<div >  </div>
			<div >
				<button type="button" class="btn btn-default" id="merchant-reg" onClick="location.href='reg-merchant.jsp'">   商户版-注册      </button>
				<br><br>
				<button type="button" class="btn btn-default" id="customer-reg" onClick="location.href='reg-customer.jsp'">   个人版-注册       </button>
			</div>
		
		
		</div>
		<div class="col-md-4 column" >
		</div>
	</div>
</div>


<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>



</body>
<script type="text/javascript">
 
</script> 

</html>