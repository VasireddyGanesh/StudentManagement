package in.ac.gvpce.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;


import in.ac.gvpce.bean.*;

public class StudentDao {
	public int registerStudent(Student student) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO cstudent" +
            "( firstname, lastname, username, password, department, contact) VALUES" +
            " ( ?, ?, ?, ?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/college?useSSL=false", "root", "ganesh@123");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, student.getFirstName());
            preparedStatement.setString(2, student.getLastName());
            preparedStatement.setString(3, student.getUsername());
            preparedStatement.setString(4, student.getPassword());
            preparedStatement.setString(5, student.getDepartment());
            preparedStatement.setString(6, student.getContact());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    
    public Student validate(Student student) throws ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");
        Student s=null;

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/college?useSSL=false", "root", "ganesh@123");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from cstudent where username = ? and password = ? ")) {
            preparedStatement.setString(1, student.getUsername());
            preparedStatement.setString(2, student.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            if(rs.next()) {
            	s=new Student();
            	s.setFirstName(rs.getString("firstname"));
            	s.setLastName(rs.getString("lastname"));
            	s.setUsername(rs.getString("username"));
            	s.setContact(rs.getString("contact"));
            	s.setDepartment(rs.getString("department"));
            }
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return s;
    }    
}
