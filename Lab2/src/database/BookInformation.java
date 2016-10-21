package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import po.book;

public class BookInformation {
	public book bookInformation(String isbn) throws SQLException{
		book bk = new book();
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		try {
			// STEP 2: Register JDBC driver
			
			conn = GetConnection.getConn();

			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			
			String sql;
			sql = "SELECT * FROM book where isbn=?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, isbn);
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {// rs.next()==null˵�����ѯ�����ݲ����ڡ�
				// Retrieve by column name
				
				//String isbn = rs.getString("isbn");
				
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
}
