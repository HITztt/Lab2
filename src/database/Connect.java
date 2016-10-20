package database;
import java.sql.*;

public class Connect {
	Connection con=null;//声明connect对象
	Statement state = null;
	ResultSet result = null;
	public Connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");//驱动程序名；加载驱动程序
			//localhost:3306/librarydb
			//jdbc:mysql://rmvtxoakdtkw.rds.sae.sina.com.cn：10183/mybookdb", "root", "71179ztt"
			con = DriverManager.getConnection("jdbc:mysql://rmvtxoakdtkw.rds.sae.sina.com.cn:10183/mybookdb", "root", "71179ztt");
			state = con.createStatement();
		} catch (Exception e) {//数据库驱动异常处理
			con = null;
			System.out.println("无法连接");
		}
	}

	public ResultSet executeQuery(String sql) {
		try {
			result = state.executeQuery(sql);
		} catch (Exception e) {
			result = null;
		}
		return result;
	}

	public int executeUpdate(String sql) {
		try {
			state.executeUpdate(sql);
			return 0;
		} catch (Exception e) {
			return -1;
		}
	}
}
