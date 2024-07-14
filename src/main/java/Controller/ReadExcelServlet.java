package Controller;

import java.io.IOException;
import java.util.ArrayList;

import Utility.ReadExcel;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ReadExcelServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = req.getServletContext().getRealPath("Book1.xlsx");
		ArrayList<String> myList = new ArrayList<>();
		
		myList = ReadExcel.getExcelData(path);
		req.setAttribute("courses", myList);
		
		req.getRequestDispatcher("Registration.jsp").forward(req, resp);
	}
}