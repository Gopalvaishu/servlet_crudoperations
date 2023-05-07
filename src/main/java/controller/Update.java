package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDao;
import dto.Student;

@WebServlet("/update")
public class Update extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student student=new Student();
		student.setId(Integer.parseInt(req.getParameter("id")));
		String name=req.getParameter("name");
		long mobile= Long.parseLong(req.getParameter("mobile"));
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		Date dob= Date.valueOf(req.getParameter("dob"));
		String[] language=req.getParameterValues("language");
		String address=req.getParameter("address");
		String country=req.getParameter("country");
		
		StudentDao dao=new StudentDao();
		dao.update(student);
//		resp.getWriter().print("<h1>Data Added Successfully</h1>");

		resp.getWriter().print("<h1>Updated Successfully</h1>");
		req.setAttribute("list", dao.fetchAll());
		req.getRequestDispatcher("FetchAll.jsp").include(req, resp);
	}
	

}
