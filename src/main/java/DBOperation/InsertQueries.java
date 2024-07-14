package DBOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Student;
import DBHandler.DbConnection;

public class InsertQueries {

	private static Connection con;

	private static void openConnection() throws ClassNotFoundException, SQLException {
		con = DbConnection.getConnection();
	}

	private static void closeConnection() throws SQLException {
		con.close();
	}
	
	public static int insertData(Student student) throws ClassNotFoundException, SQLException {
		int row = 0;
		
		openConnection();
		
		String query = "insert into student (name,email,course,session) values (?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1,student.getName());
		pstmt.setString(2, student.getEmail());
		pstmt.setString(3, student.getCourse());
		pstmt.setString(4, student.getSession());
		
		row = pstmt.executeUpdate();
		
		closeConnection();
		return row;
		
	}

}