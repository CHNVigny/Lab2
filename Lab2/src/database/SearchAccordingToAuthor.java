package database;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import database.GetConnection;
import po.book;
import po.author;

public class SearchAccordingToAuthor {
	//private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	//private static final String DB_URL = "jdbc:mysql://localhost:3306/library_db";

	// Database credentials
	//private static final String USER = "root";
	//private static final String PASS = "332319";

	public List<book> getBook(String name) throws UnsupportedEncodingException {
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		List<book> list = new ArrayList<book>();
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		try {
			// STEP 2: Register JDBC driver
			String sql = "SELECT * FROM author where name=?";
			conn = GetConnection.getConn();
			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.setString(1, name);
			//pstmt1 = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet authorrs = pstmt.executeQuery();
			while(authorrs.next()){
				String authorid = String.valueOf(authorrs.getInt("authorid"));
				String sql1 = "SELECT * FROM book where authorid=?";
				pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
				pstmt1.setString(1, authorid);
				ResultSet rs = pstmt1.executeQuery();
				while (rs.next()) {
					
					String title = rs.getString("title");
					String isbn = rs.getString("isbn");
					
					int authorid1 = rs.getInt("authorid");
					String publisher = rs.getString("publisher");
					String publishdate = rs.getString("publishdate");
					String price = rs.getString("price");
					book bk = new book();
					bk.setIsbn(isbn);
					bk.setTitle(title);
					bk.setPublisher(publisher);
					bk.setPublishdate(publishdate);
					bk.setPrice(price);
					bk.setAuthorid(authorid1);
					list.add(bk);
					
				}
				// STEP 6: Clean-up environment
				
				rs.close();
				pstmt1.close();
				
			}
			
			pstmt.close();
			conn.close();
			return list;
			
			// �Ҳ������ߵ������ʱ��֪����ô����
			
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (pstmt1 != null)
					pstmt1.close();
			} catch (SQLException se2) {
				
			}
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		return null;
	}
	
	
}
