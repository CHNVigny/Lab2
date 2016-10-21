package database;
import database.MyDataBase;
import java.sql.*;
import com.mysql.jdbc.*;
import com.mysql.jdbc.Connection;
import database.MyDataBase;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
public class GetConnection {
	public static Connection getConn(){
		Connection conn = null;
		 try {
			 	Class.forName("com.mysql.jdbc.Driver");
				// STEP 3: Open a connection
				System.out.println("Connecting to database...");
				conn = (Connection) DriverManager.getConnection(MyDataBase.DB_URL(), MyDataBase.USER(), MyDataBase.PASS());

		    } catch (ClassNotFoundException e) {
		        e.printStackTrace();
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
		    return conn;
	}
}
