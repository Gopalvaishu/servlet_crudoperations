<%@page import="java.util.Arrays"%>
<%@page import="dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Student student=(Student)request.getAttribute("student"); %>
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
</body>

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
<th><button>Delete</button></th>
<th><button>Edit</button></th>
</tr>
</html>