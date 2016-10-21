package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DetectBook {
	public static int detectBook(){
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		int i=0;
		conn = GetConnection.getConn();
		try {
			
			System.out.println("Creating statement...");
			String sql = "SELECT * FROM book ";
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        rs=pstmt.executeQuery();
            if(rs.next()){
            	i=1;
            }
            rs.close();
	        pstmt.close();
	        conn.close();
	        return i;
			
		} catch (SQLException se) {
			
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
			} 
		} 
		
		return i;
	}
	
}
