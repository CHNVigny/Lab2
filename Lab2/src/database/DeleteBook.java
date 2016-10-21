package database;
import java.sql.*;
import database.GetConnection;
import po.book;


public class DeleteBook {
	public int delete(String isbn) throws SQLException{
		java.sql.Connection conn = null;
		PreparedStatement pstmt = null;
		int i=0;
		conn = GetConnection.getConn();
		// STEP 4: ��ѯ���
		System.out.println("Creating statement...");
		
		String sql;
		sql = "delete from book where isbn=?";
		try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1, isbn);
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
