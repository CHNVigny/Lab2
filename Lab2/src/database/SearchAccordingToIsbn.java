package database;
import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import database.GetConnection;
import po.book;
import po.author;

public class SearchAccordingToIsbn {
	private book bk;
	private author ar;

	public book getBook(String isbn) throws UnsupportedEncodingException{
		//isbn=new String(isbn.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// STEP 2: Register JDBC driver
			conn = GetConnection.getConn();
			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			String sql = "SELECT * FROM book where isbn=?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			pstmt.setString(1,isbn);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {// rs.next()==说明要找的项不存在
				// Retrieve by column name
				String title = rs.getString("title");
				int authorid = rs.getInt("authorid");
				String publisher = rs.getString("publisher");
				String publishdate = rs.getString("publishdate");
				String price = rs.getString("price");
				book bk=new book();
				bk.setIsbn(isbn);
				bk.setTitle(title);
				bk.setPublisher(publisher);
				bk.setPublishdate(publishdate);
				bk.setPrice(price);
				bk.setAuthorid(authorid);
			}
			// STEP 6: Clean-up environment
			rs.close();
			pstmt.close();
			conn.close();
			return bk;
		
			
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
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
		
	
	
	/*
	public author getAuthor(String isbn){
		int authorid = 0;
		java.sql.Connection conn = null;
		Statement stmt = null;
		try {
			// STEP 2: Register JDBC driver
			conn = GetConnection.getConn();
			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = "SELECT authorid FROM book where isbn='"+isbn+"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {// rs.next()==null˵�����ѯ�����ݲ����ڡ�
				authorid = rs.getInt("authorid");
			}
			sql = "SELECT * FROM book where authorid='"+authorid+"'";
			ResultSet rs1 = stmt.executeQuery(sql);
			if(rs1.next()) {// rs.next()==null˵�����ѯ�����ݲ����ڡ�
				// Retrieve by column name
				String name = rs.getString("name");
				String age = rs.getString("age");
				//authorid = rs.getInt("authorid");
				String country = rs.getString("country");
				//String publishdate = rs.getString("title");
				//String price = rs.getString("title");
				author ar=new author(authorid, name, age, country);
			}
			// STEP 6: Clean-up environment
			rs.close();
			stmt.close();
			conn.close();
			return ar;
		
			
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
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
	*/
}
