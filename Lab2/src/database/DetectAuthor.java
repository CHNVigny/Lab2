package database;

import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class DetectAuthor {
	public static int detectAuthor3(String name, int age, String country)throws SQLException, UnsupportedEncodingException{
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		//country=new String(country.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int i=0;
		conn = GetConnection.getConn();
		// STEP 4: ��ѯ���
		
		
		try {
			// STEP 2: Register JDBC driver
			// STEP 4: ��ѯ���
			System.out.println("Creating statement...");
			
			String sql = "SELECT * FROM author where name=? and age=? and country=?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, name);
	        pstmt.setInt(2, age);
	        pstmt.setString(3, country);
	        rs=pstmt.executeQuery();
            if(rs.next()){
            	i=1;
            }
            rs.close();
	        pstmt.close();
	        conn.close();
	        return i;
			
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} 
		finally {
			// finally block used to close resources
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // nothing we can do
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException se2) {
				se2.printStackTrace();
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		
		return i;//不存在
	}
	
	public static int detectAuthor1(String name)throws SQLException, UnsupportedEncodingException{
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int i=0;
		conn = GetConnection.getConn();
		try {
			System.out.println("Creating statement...");
			
			String sql = "SELECT * FROM author where name=?";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, name);
	        rs=pstmt.executeQuery();
            if(rs.next()){
            	i=1;//存在
            }
            rs.close();
	        pstmt.close();
	        conn.close();
	        return i;
			
		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} 
		finally {
			// finally block used to close resources
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // nothing we can do
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException se2) {
				se2.printStackTrace();
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		
		return i;//不存在
	}
}
