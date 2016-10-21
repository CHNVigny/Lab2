package database;

public class MyDataBase {
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://jbwdfwljhjna.rds.sae.sina.com.cn:10448/bookdb?useUnicode=true&character=UTF-8";
	//private static final String DB_URL = "jdbc:mysql://localhost:3306/bookdb?useUnicode=true&character=UTF-8";
	private static final String USER = "root";
	private static final String PASS = "332319";
	public static String JDBC_DRIVER(){
		return JDBC_DRIVER;
	}
	public static String DB_URL(){
		return DB_URL;
	}
	public static String USER(){
		return USER;
	}
	public static String PASS(){
		return PASS;
	}
}
