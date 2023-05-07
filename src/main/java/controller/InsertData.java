package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import dao.StudentDao;
import dto.Student;

@WebServlet("/insert")
public class InsertData extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hii radha gopal");
		
		String name=req.getParameter("name");
		long mobile= Long.parseLong(req.getParameter("mobile"));
		String email=req.getParameter("email");
		String gender=req.getParameter("gender");
		Date dob= Date.valueOf(req.getParameter("dob"));
		String[] language=req.getParameterValues("language");
		String address=req.getParameter("address");
		String country=req.getParameter("country");
		res.getWriter().print("<h1>    "
				+ " Name:"+name
				+ "<br>Mobile:" +mobile
				+ "<br>Email:"+email
				+ "<br>gender:"+gender
				+ "<br>Dob:"+dob
				+ "<br>Address:"+address
				+ "<br>Langusges:"+Arrays.toString(language)
				+ "<br>Country:"+country
				+"</h1>");
		Student student=new Student();
		student.setAddress(address);
		student.setCountry(country);
		student.setEmail(email);
		student.setDob(dob);
		student.setGender(gender);
		student.setLanguage(language);
		student.setMobile(mobile);
		student.setName(name);
		
		StudentDao dao=new StudentDao();
		dao.save(student);		
		res.getWriter().print("<h1> Data Saved Successfully</h1>");
		req.getRequestDispatcher("Home1.html").include(req,res);
		
		}
}