
<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*" %>

<%
String email=(String)session.getAttribute("email");
String complaint_name=request.getParameter("complaint_name");
String complaint_sub=request.getParameter("complaint_sub");
String complaint_details=request.getParameter("complaint_details");
String category=request.getParameter("category");


try
{	
	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
		PreparedStatement pst=con.prepareStatement("insert into complaint_reg(complaint_email,complaint_name,complaint_sub,complaint_details) values(?,?,?,?)");
		pst.setString(1,email);
		pst.setString(2,complaint_name);
		pst.setString(3,complaint_sub);
		pst.setString(4,complaint_details);
		
		int count=pst.executeUpdate(); 
		if(count==1)
			
		{		
			session.setAttribute("flag","ok");
			//out.println("success");
			response.sendRedirect("home.jsp?success");						
		}
		else
			{	
					%>
				<center><h1>Please Try Again.....</h1>
				<a  href="#">Back</a>
				</center>
				<%
			}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
    