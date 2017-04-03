<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
    
 <%@ page import="javademo.*"%>  
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>  

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传证件照片</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>


<body>
<div>
<div class="col-md-4 column">
		</div>
<div class="col-md-4 column">
		
<form action="/TomcatTest/UploadServlet" enctype="multipart/form-data" method="post" >
	<a><label>证件照片上传</label></a><hr style="width:100%;margin-top:0px;color:#000"/>
				<div class="form-group">
					 <label for="exampleInputFile">身份证照片上传</label><input type="file" name="uploadFile1" />
					<p class="help-block">
						请上传正面照片。
					</p>
					
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">身份证照片上传</label><input type="file" name="uploadFile2" />
					<p class="help-block">
						请上传反面照片。
					</p>
					
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">身份证照片上传</label><input type="file" name="uploadFile3" />
					<p class="help-block">
						请上传手持证件照。
					</p>
					
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">银行卡照片上传</label><input type="file" name="uploadFile4" />
					<p class="help-block">
						请上传银行卡正面照片。
					</p>
				</div>
			
				
			
				
				
				<button type="submit" class="saveandpush" >保存并提交</button>
				<button type="reset" class="btn btn-default">取消</button>
				<br><br><br><br>
</form>

		</div>
<div class="col-md-4 column">
		</div>

</div>

<%
//传值给regwrite
request.setCharacterEncoding("UTF-8");
RegWrite.set1(request.getParameter("reg-idcard"));
RegWrite.set2(request.getParameter("reg-pwd")); 
RegWrite.set3(request.getParameter("reg-bank"));
RegWrite.set4(request.getParameter("reg-bankinfo"));
RegWrite.set5(request.getParameter("reg-bankcard"));
RegWrite.set6(request.getParameter("reg-accountperson"));
RegWrite.set7(request.getParameter("reg-phone"));
RegWrite.set8(request.getParameter("reg-shopid"));
RegWrite.set9(request.getParameter("reg-shop"));
RegWrite.set10(request.getParameter("reg-legalperson"));
	
    //如果loginsuccess为true，则进入welcome页面，否则进入error页面
    //<jsp:forward page = "error.jsp"></jsp:forward>
     
    
    
%> 

<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>



</body>
</html>