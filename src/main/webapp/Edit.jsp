
<%@page import="dto.Student"%>
<%@page import="dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%int id=Integer.parseInt(request.getParameter("id")); 
StudentDao dao=new StudentDao();
Student student=dao.find(id);
%>
<h1>Edit Page</h1>
<form action="update">
<table>
<tr>
<th>Id:</th>
<th><input type="text" name="id" value="<%=id %>" readonly="readonly"></th>
</tr>

<tr>
<th>Name:</th>
<td><input type="text" name="name" value="<%=student.getName()%>"></td>
</tr>

<tr>
<th>Mobile:</th>
<td><input type="tel" name="mobile" value="<%=student.getMobile()%>" pattern=" {0-9}[10]"></td>
</tr>


<tr>
<th>Email:</th>
<td><input type="email" name="email" value="<%=student.getEmail()%>"></td>
</tr>
<tr>
<th> Gender:</th>
<%if(student.getGender().equals("male")){ %>
<td><input type="radio" name="gender" value="male" checked="checked"> Male
<input type="radio" name="gender" value="female"> Female
</td>
</tr>
<%}else { %>
<td><input type="radio" name="gender" value="male" checked="checked"> Male
<input type="radio" name="gender" value="female" checked="checked"> Female
</td>
<%} %>
<tr>
<th>Date of Birth:</th>
<td><input type="date" name="dob"  value="<%=student.getDob()%>"></td>
</tr>
<tr>
<th>Address:</th>
<td><textarea rows="5" cols="21" name="address" ><%=student.getAddress() %></textarea></td>
</tr>
<tr>
<th> Languages Known:</th>
<td>
<% 
boolean flag1=true;
boolean flag2=true;
boolean flag3=true;
for(String s:student.getLanguage()){
	if(s.equals("Kannada")){

%>
<input type="checkbox" name="language" value="Kannada" checked="checked">Kannada
<% 
	}else{%>
	<input type="checkbox" name="language" value="Kannada" >Kannada
<%} %>
<% if(s.equals("English")){ %>
<input type="checkbox" name="language" value="English" checked="checked">English
<%
continue;
}else{%>
<input type="checkbox" name="language" value="English" >English
<%} %>
<% if(s.equals("Hindi")){%>
<input type="checkbox" name="language" value="Hindi" checked="checked">Hindi
<%
continue;
}else{%>
<input type="checkbox" name="language" value="Hindi" >Hindi
<%} %>
<%} %>
</td>
</tr>

<tr>
<th>Country:</th>
<td>
<select name="country">
<option>India</option>
<option>South korea</option>
<option>Sri lanka</option>


</select>
</td>
</tr>
<tr>
<td><button  >Cancel</button></td>
<td><button>Update</button></td>
</table>
</form>
<br>
<br>
<a href="Home1.html"><button>Home1</button></a>
</body>
</html>