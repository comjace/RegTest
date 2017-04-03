<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>

<!--  登录页面v1.0    -->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP login</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">

        
        
    </head>
    <body style="background-image:url(images/background.jpg); background-repeat:no-repeat; background-attachment:fixed;background-size:100%">
    
    <div class="container " style="height:100%;width:100%;padding:0px;">
	<div class="row clearfix" style="width:100%;height:100%;margin:0px;">
		<div class="col-md-9 column"style="height:100%">
		</div>
		<div class="col-md-3 column" style="height:100%">
		    <br><br><br><br><br><br><br>
		    <br><br><br><br><br><br><br><br><br><br>
		    
		    
		    <div style="position:absolute">
		    <br><br>
		    <h1>请登录系统</h1>
        
        	<form name="form" action="JSP_Login.jsp" method="get"  >
            		用户：
            <input type="text" name="username" value="zeng" />
            <br>
           			 密码：
            <input type="password" name="password" value="" />
            <p></p>
            <input type="submit" value="确认" name="submit" />
            <input type="reset" value="取消" name="reset" />
        	</form>
        	<br><br>
        	</div>
     	</div>
		
	</div>
</div> 
	
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

        
        
        
    </body>
</html>