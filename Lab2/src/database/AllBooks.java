package database;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import database.GetConnection;
import po.author;
import po.book;

public class AllBooks {
	public List<book> getBooks() throws SQLException{
		List<book> list = new ArrayList<book>();
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		try {
			// STEP 2: Register JDBC driver
			
			conn = GetConnection.getConn();

			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			
			String sql;
			sql = "SELECT * FROM book";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        //pstmt.setString(1, name);
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				
				book bk=new book();
				String isbn = rs.getString("isbn");
				String title = rs.getString("title");
				int authorid = rs.getInt("authorid");
				String publisher = rs.getString("publisher");
				String publishdate = rs.getString("publishdate");
				String price = rs.getString("price");
				bk.setIsbn(isbn);
				bk.setTitle(title);
				bk.setPublisher(publisher);
				bk.setPublishdate(publishdate);
				bk.setPrice(price);
				bk.setAuthorid(authorid);
				//book bk=new book(isbn, title, authorid, publisher, publishdate, price);
				
				String sql1= "SELECT * FROM author where authorid=?";
				pstmt1 = (PreparedStatement) conn.prepareStatement(sql1);
				pstmt1.setInt(1, authorid);
				ResultSet rs1=pstmt1.executeQuery();
				if(rs1.next()){
					String name=rs1.getString("name");
					int age=rs1.getInt("age");
					String country=rs1.getString("country");
					bk.setAuthor(name);
					bk.setAuthorAge(age);
					bk.setAuthorCountry(country);
					rs1.close();
					
				}
				list.add(bk);
				//String country = rs.getString("country");

				// Display values
				//System.out.print("authorid: " + authorid);
				//System.out.print(", name: " + name);
				//System.out.print(", Age: " + age);
				//System.out.println(", country: " + country);
			}
			// STEP 6: Clean-up environment
			rs.close();
			
			pstmt.close();
			pstmt1.close();
			conn.close();
			return list;
		
			
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
	public author getAuthor(int authorid){
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int i=0;
		conn = GetConnection.getConn();
		// STEP 4: ��ѯ���
		
		try {
			System.out.println("Creating statement...");
			pstmt = (PreparedStatement)conn.createStatement();
			String sql;
			sql = "select * from author where authorid=?";
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setInt(1, authorid);
	        i = pstmt.executeUpdate();
	        rs=pstmt.executeQuery();
	        if(rs.next()){
	        	author au=new author();
	        	au.setAuthorid(rs.getInt("authorid"));
	        	au.setAge(rs.getInt("age"));
	        	au.setName(rs.getString("name"));
	        	au.setCountry(rs.getString("country"));
	        	rs.close();
		        pstmt.close();
		        conn.close();
		        return au;
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
}
