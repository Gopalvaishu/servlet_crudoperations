<%@page import="java.util.Arrays"%>
<%@page import="dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch All jsp file for FetchData.java</title>
</head>
<body>
<% List<Student> list=(List<Student>)request.getAttribute("list"); %>
<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Mobile</th>
<th>Email</th>
<th>Gender</th>
<th>DOB</th>
<th>Address</th>
<th>Country</th>
<th>Language</th>
<th>Delete</th>
<th>Edit</th>
</tr>
<%for(Student student:list){ %>
<tr>
<th><%=student.getId() %></th>
<th><%=student.getName() %></th>
<th><%=student.getMobile() %></th>
<th><%=student.getEmail() %></th>
<th><%=student.getGender() %></th>
<th><%=student.getDob() %></th>
<th><%=student.getAddress() %></th>
<th><%=student.getCountry() %></th>
<th><%=Arrays.toString(student.getLanguage()) %></th>
<th><a href="delete?id=<%=student.getId() %>"><button>Delete</button></th>
<th><a href="Edit.jsp?id=<%=student.getId()%>"><button>Edit</button></th></a>
</tr>
<%} %>
</table><br>
<a href="Home1.html"><button>Home</button></a>

</body>
</html>