package database;

import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateBook {
	public static int updateBook(String isbn,int authorid, String publisher, String publishdate, String price) throws UnsupportedEncodingException{
		int i=0;
		//isbn=new String(isbn.getBytes("ISO-8859-1"),"UTF-8");
		//publisher=new String(publisher.getBytes("ISO-8859-1"),"UTF-8");
		//publishdate=new String(publishdate.getBytes("ISO-8859-1"),"UTF-8");
		//price=new String(price.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		conn = GetConnection.getConn();
		// STEP 4: ��ѯ���
		
		try {
			System.out.println("Creating statement...");
			String sql;
			sql = "update book set authorid=?,publisher=?,publishdate=?,price=? where isbn=?";
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setInt(1, authorid);
	        pstmt.setString(2, publisher);
	        //pstmt.setInt(3, authorid);
	        pstmt.setString(3, publishdate);
	        pstmt.setString(5, isbn);
	        pstmt.setString(4, price);
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	        return i;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return i;
	}
		
}
