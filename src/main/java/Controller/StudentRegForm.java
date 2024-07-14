package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import Bean.Student;
import DBOperation.InsertQueries;

import Utility.MyMail;
import Utility.MyValidation;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentRegForm extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = req.getParameter("name");
		if(name.length() >= 45) {
			throw new ServletException("Name Length too Long ...");
		}
		String email = req.getParameter("custMail");
		
		if(!MyValidation.validEmail(email)) {
			throw new ServletException("Incorrect Email Format ...");
		}
		String course = req.getParameter("course");
		String session = req.getParameter("session");
		
		
		Student student = new Student();
		
		student.setName(name);
		student.setCourse(course);
		student.setEmail(email);
		student.setSession(session);
		
		try {
			int row = InsertQueries.insertData(student);
			
			if(row==0) {
				//redirect to fail.jsp
			}else {
				String username = "byarpar0@gmail.com";
				String password = "nivnjaerzmstkhry";
				String sub = "Register Form...";
				String detail = "Thanks for joining..."+ "\nName: "+ name + "\nCourse:  " + course + "\nSession: " +session;
				
				MyMail.sendMail(username, password, email, sub, detail);
				req.setAttribute("stuData", student);
				req.getRequestDispatcher("thanks.jsp").forward(req, resp);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
	
	
}