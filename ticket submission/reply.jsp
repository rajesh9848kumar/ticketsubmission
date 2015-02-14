<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*,javax.servlet.*,javax.servlet.http.*" %>
<% 
        try
		{
			
			String complaint_email=request.getParameter("complaint_email");
			out.println(complaint_email);
			String reply=request.getParameter("reply");

          	Connection con=databasecon.getconnection();
			Statement st=con.createStatement();
			
			int count=st.executeUpdate("update complaint_reg set reply='"+reply+"' where complaint_email='"+complaint_email+"'");
           
        
				if(count==1)
			{
					response.sendRedirect("tech_home.jsp?submitted");
					//out.println("success");
				}
                else
			{
					response.sendRedirect("tech_home.jsp?failed");
				//out.println("fffff");
			}
	}
	catch(Exception e)
	{
            System.out.println(e);
	}
        %>