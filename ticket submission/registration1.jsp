<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*" %>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String phone=request.getParameter("phno");
String city=request.getParameter("city");
String country=request.getParameter("country");

try
{	
	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");	
	boolean b=rs.next();
	if(b==true)
	{
	%>
	<center>
		<h1>Email ID already exist, please modify...</h1>
		<a class="myButton" href="registration.html">Back</a>
		</center>
	<%
	}
	else
	{		
		PreparedStatement pst=con.prepareStatement("insert into user(name,email,phone,password,country,city)values(?,?,?,?,?,?)");
	//	pst.setString(1,"111");
		pst.setString(1,name);
		pst.setString(2,email);
		pst.setString(3,phone);
		pst.setString(4,password);
		pst.setString(5,country);
		pst.setString(6,city);
		int count=pst.executeUpdate(); 
		if(count==1)
		{	
			session.setAttribute("email",email);		
			response.sendRedirect("login.html?Success");
		}
		else
		{
		%>			
		<center>
		<h1>Registration Failure</h1>
		<a class="myButton" href="registration.html?Failure">Back</a>
		</center>
		<%
		}
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>