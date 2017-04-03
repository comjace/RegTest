<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>   

<!--  登录页面v1.0    -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
    String username = request.getParameter("username");//因大小写错误，调试三小时；
    String password = request.getParameter("password"); //获取用户输入的用户名和密码
    boolean loginsuccess = false;  //标记
    String test=null;
    //数据库连接
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/runoob","root","cj1234");
        stmt = con.createStatement();
        String sql = "select * from users where UserName='" + username + "'";
        test=sql;
        rs = stmt.executeQuery(sql);
        while(rs.next()){
            if(password.equals(rs.getString("Password"))){
                loginsuccess = true;
                session.setAttribute("username",username);
            }
        }
        
    } catch(Exception sqlex1) {
        sqlex1.printStackTrace();
    } finally {
        if(con!=null){
            try{
                con.close();
            }catch(SQLException sqlex2){
                sqlex2.printStackTrace();
            }
        }
    }
    //如果loginsuccess为true，则进入welcome页面，否则进入error页面
    //<jsp:forward page = "error.jsp"></jsp:forward>
    if(loginsuccess){
        %>
        <jsp:forward page = "welcome.jsp"></jsp:forward>
        <%
        } else{
            
        %>
        <jsp:forward page = "error.jsp"></jsp:forward>
        <%
            
        }
    
%>
</body>
</html>