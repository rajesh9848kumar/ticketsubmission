     <%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*,javax.servlet.*,javax.servlet.http.*" %>
	 <%
if(session.getAttribute("email")==null){
		response.sendRedirect("login.html");
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> Tickets </title>
  <link rel="shortcut icon" href="images/Searson-logo.gif"/>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="styles/style1.css"/>
 </head>

 <body>
   <header>
		<div id="logo">
			<h1 class="logo-title">Ticket Raising System</h1>
		</div>
		<div id="nav">
				<ul>
					<li><a href="home.jsp">Home</a></li>
					<li><a href="user_profile.jsp" class="active">Profile</a></li>
					<li><a href="submitcomplaint.jsp">Raise Ticket</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
		</div>
  </header>
  <section>
	<div class="wrapper-reg , reg-form">
	   <% 
            try
	{
				//String email=request.getParameter("email");
				String email=(String)session.getAttribute("email");
            	Connection con=databasecon.getconnection();
            	Statement st=con.createStatement();
        		ResultSet rs=st.executeQuery("select *from user where email='"+email+"'");
                        %>
                        <table>             
                                <tr><th colspan="3"><h1><u>My Profile</u></h1><br></th></tr>
                        <%
                        while(rs.next())
                        {
                            %>                            
                                <tr><td> Name</td><td>:</td>                       
                                <td><%=rs.getString("name")%></td></tr>
                                
                                <tr><td>Email ID</td><td>:</td>                        
                                <td><%=rs.getString("email")%></td></tr>
                                
                                <tr><td>Password</td> <td>:</td>                       
                                <td><%=rs.getString("password")%></td></tr>
                                
                                <tr><td>Phone Number</td> <td>:</td>                       
                                <td><%=rs.getString("phone")%></td></tr>
                                
                                <tr><td>City</td><td>:</td>                        
                                <td><%=rs.getString("city")%></td></tr>
                                
                                <tr><td>Country</td> <td>:</td>                       
                                <td><%=rs.getString("country")%></td></tr>                         
                                                  
                            <%
                        }
                        %>
                        </table>
						
                        <%
        	}
        	catch(Exception e)
        	{
                    e.printStackTrace();
        	}
                %>
				</div>
	</section>
 <footer>
   <h4 id="footer-text">
&copy;  copy rights 2015 - reserved for ticket raisers
<h4>
   </footer>
 </body>
</html>