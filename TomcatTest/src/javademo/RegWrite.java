package javademo;

import java.util.ArrayList;


//("/RegWrite")
public class RegWrite {
	private static String SQL = "insert into reg_customer (reg_idcard,reg_pwd,reg_bank,reg_bankinfo,reg_bankcard,reg_accountperson,reg_phone,reg_shopid,reg_shop,reg_legalperson,reg_idcardfront,reg_idcardbehind,reg_idcardwithporson,reg_bankcardfront) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private static String[] sul = new String[20];

	public static boolean doreg() {
		ArrayList<String> lss = UploadServlet.getls();
		sul[10] = lss.get(0);
		sul[11] = lss.get(1);
		sul[12] = lss.get(2);
		sul[13] = lss.get(3);
		System.out.println("正在注册");
		boolean regstatus=false;
		try {

			java.sql.PreparedStatement stmt = Mycon.getcon().prepareStatement(SQL);
			int i = 0;
			while (i <= 13) {
				stmt.setString(i + 1, sul[i]);
				System.out.println(i + "---------" + sul[i]);
				i++;
			}
			stmt.executeUpdate();//执行SQL；
			regstatus=true;//注册成功
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			Mycon.close();
		}
		return regstatus;
		
		
	}

	public static void set1(String s) {
		sul[0] = s;
	}

	public static void set2(String s) {
		sul[1] = s;
	}

	public static void set3(String s) {
		sul[2] = s;
	}

	public static void set4(String s) {
		sul[3] = s;
	}

	public static void set5(String s) {
		sul[4] = s;
	}

	public static void set6(String s) {
		sul[5] = s;
	}

	public static void set7(String s) {
		sul[6] = s;
	}

	public static void set8(String s) {
		sul[7] = s;
	}

	public static void set9(String s) {
		sul[8] = s;
	}

	public static void set10(String s) {
		sul[9] = s;
	}

	// more
	public static void set14(String s) {
		sul[14] = s;
	}

	public static void set15(String s) {
		sul[15] = s;
	}
//get方法
	public static String get1() {
		return sul[0];
	}

}
