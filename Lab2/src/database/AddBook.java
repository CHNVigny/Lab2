package database;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import database.GetConnection;


public class AddBook {
	public static int addBook(String isbn, String title, int authorid, String publisher, String publishdate, String price) throws SQLException, UnsupportedEncodingException{
		//title=new String(title.getBytes("ISO-8859-1"),"UTF-8");
		//publisher=new String(publisher.getBytes("ISO-8859-1"),"UTF-8");
		//publishdate=new String(publishdate.getBytes("ISO-8859-1"),"UTF-8");
		//price=new String(price.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		int i=0;
		conn = GetConnection.getConn();
		// STEP 4: ��ѯ���
		
		try {
			System.out.println("Creating statement...");
			
			String sql;
			sql = "insert into book (isbn,title,authorid,publisher,publishdate,price) values(?,?,?,?,?,?)";
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, isbn);
	        pstmt.setString(2, title);
	        pstmt.setInt(3, authorid);
	        pstmt.setString(4, publisher);
	        pstmt.setString(5, publishdate);
	        pstmt.setString(6, price);
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	        return i;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return i;
	    }
		
	}
	
	
	
}
