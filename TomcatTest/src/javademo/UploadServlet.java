package javademo;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

 

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
     // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "Upload";
    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
     //定义存储路径数组
    static ArrayList<String>  ls=new ArrayList<String>();
   
    
    /**
     *获取存储路径数组
     */
    public static ArrayList<String> getls() {
    	return ls;
    	}
    
    
    
    /**
     * 上传数据及保存文件
     */
    protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		// 检测是否为多媒体上传
		if (!ServletFileUpload.isMultipartContent(request)) {
		    // 如果不是则停止
		    PrintWriter writer = response.getWriter();
		    writer.println("Error: 表单必须包含 enctype=multipart/form-data");
		    writer.flush();
		    return;
		}
        // 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);
 
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        
        //String uploadPath= getServletContext().getRealPath("./")+ UPLOAD_DIRECTORY +File.separator +RegWrite.get1() ;
        //String s=Thread.currentThread().getContextClassLoader().getResource("").getPath(); 
        //int num=s.indexOf(".metadata");
        //String uploadPath=s.substring(0,num).replace('/', '\\')+"TomcatTest" +File.separator+ UPLOAD_DIRECTORY +File.separator +RegWrite.get1();
        //String uploadPath=s.substring(0,num)+"TomcatTest" +File.separator+ UPLOAD_DIRECTORY +File.separator +RegWrite.get1();
        //无法创建文件夹，TomcatTest文件夹只读属性
        //System.out.println(uploadPath);
        String uploadPath="D:"+File.separator+ UPLOAD_DIRECTORY +File.separator +RegWrite.get1();//修改可存档文件夹后成功；
       
        
        //String s= request.getParameter("reg-idcard");
        
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        
        if(!uploadDir.exists()){//判断该目录是否存在
        	uploadDir.mkdir();//如果不存在就建立该目录
            
        	  if (uploadDir.canWrite()) {  
                  System.out.println("个人目录创建成功");  
              }
           //System.out.print("无法创建该目录！");//如果建立失败，给出提示
              
        }
        
      
  
        try {
            // 解析请求的内容提取文件数据
            
            List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                // 迭代表单数据
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        // 在控制台输出文件的上传路径
                        System.out.println(filePath);
                        ls.add(filePath);
                        // 保存文件到硬盘
                        item.write(storeFile);
                        
                    }
                }
            }
        } catch (Exception ex) {
        	ex.printStackTrace();
        }
        //sql="insert into reg_customer (reg_idcard,reg_pwd,reg_bank,reg_bankinfo,reg_bankcard,reg_accountperson,reg_phone,reg_shopid,reg_shop,reg_legalperson,reg_idcardfront,reg_idcardbehind,reg_idcardwithporson,reg_bankcardfront) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
        //String sql1 = "insert into reg_merchant (reg_idcard,reg_pwd,reg_bank,reg_bankinfo,reg_bankcard,reg_accountperson,reg_phone,reg_shopid,reg_shop,reg_legalperson) VALUES('"+regidcard+"', '"+regpwd+"','"+regbank+"', '"+regbankinfo+"','"+regbankcard+"','"+regaccountperson+"','"+regphone+"','"+regshopid+"','"+regshop+"','"+regmerchantname+"')";
    	//String sql2 = "insert into reg_customer (reg_idcard,reg_pwd,reg_bank,reg_bankinfo,reg_bankcard,reg_accountperson,reg_phone,reg_idcardfront,reg_idcardbehind,reg_idcardwithporson,reg_bankcardfront) VALUES('"+regidcard+"', '"+regpwd+"','"+regbank+"', '"+regbankinfo+"','"+regbankcard+"','"+regaccountperson+"','"+regphone+"','"+ls.get(0)+"','"+ls.get(1)+"','"+ls.get(2)+"','"+ls.get(3)+"')";
        
        try {
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
        
        /**
         * RegWrite()上传数据到数据库，跳转
         */
        
        if(RegWrite.doreg()){
        	request.getRequestDispatcher("/login/welcome.jsp").forward(request,response );
        	System.out.println("注册成功");
        }else{
        	request.getRequestDispatcher("/login/error.jsp").forward(request,response );
        	System.out.println("注册失败");
        }
        // 跳转到 message.jsp
        //getServletContext().getRequestDispatcher("RegWrite").forward( request, response);
        
        
    }
}