package database;

import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddAuthor {
	public static int addAuthor(String name, int age, String country) throws UnsupportedEncodingException{
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		//country=new String(country.getBytes("ISO-8859-1"),"UTF-8");
		int i=0;
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		conn = GetConnection.getConn();
		String sql= "insert into author (name,age,country) values(?,?,?)";
		try {
            pstmt=(PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, name); //对占位符设置值，占位符顺序从1开始，第一个参数是占位符的位置，第二个参数是占位符的值。
            pstmt.setString(3, country); 
            pstmt.setInt(2, age); 
            i=pstmt.executeUpdate();
            return i;
           
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return i;
        }finally {
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
		
       
	}
	public static int getAuthorid(String name, int age, String country) throws SQLException, UnsupportedEncodingException{
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		//country=new String(country.getBytes("ISO-8859-1"),"UTF-8");
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int i=0;
		conn = GetConnection.getConn();
		
		System.out.println("Creating statement...");
		
		String sqlId="select authorid from author where name=? and age= ? and country=?";
		try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sqlId);
        	pstmt.setString(1, name);
	        pstmt.setInt(2, age);
	        pstmt.setString(3, country);
            rs=pstmt.executeQuery();
            while(rs.next()){
            	i=rs.getInt("authorid");
            }
            rs.close();
	        pstmt.close();
	        conn.close();
	        return i;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return i;
	}
}
