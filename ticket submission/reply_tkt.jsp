<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*" %>

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
  <script type="text/javascript">
	function fun(){
	var f=document.getElementById("flag").value;
	if(f=="ok"){
		alert("Ticket successfully submited");
	}
}
  </script>
 </head>

 <body>
 <input type=hidden name="flag" id="flag" value="<%=(session.getAttribute("flag")==null)?null:session.getAttribute("flag")%>">
   <header>
		<div id="logo">
			<h1 class="logo-title">Ticket Raising System</h1>
		</div>
		<div id="nav">
				<ul>
					<li><a href="tech_home.jsp" >Home</a></li>
					<li><a href="new_ticket.jsp" class="active">New Tickets</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
		</div>
  </header>
  <section>
	<% 
			try
		{
			
			String email=request.getParameter("email");
			
          	Connection con=databasecon.getconnection();
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery("select cr.complaint_email,u.name,cr.complaint_sub,cr.complaint_details from complaint_reg cr,user u where cr.complaint_email='"+email+"' and cr.reply='not replyed' and u.email=cr.complaint_email" );

                %>
				<form method="post" action="reply.jsp?complaint_email=<%=email%>">

              
               <%
                if(rs.next())
                {
                    %>  
							<div class="content">
			<label>Name :</label><span>  <%=rs.getString("name")%> </span><br><br>
			<label>Subject :</label><p> <%=rs.getString("complaint_sub")%></p><br>
			<label>Description :</label><p> <%=rs.getString("complaint_details")%></p><br>
			<label>Add Comment:</label><br>
							<textarea height:229px;"="" width:747px;="" name="reply" type="text" style="width: 709px; height: 208px;"></textarea><br>
							<input type="submit"  value="Submit" class="frm-butt"/>
						</div>
	
                    <%
					//	request.setAttribute("complaint_email",email);
                }

	}
	catch(Exception e)
	{
            System.out.println(e);
	}
        %>
		</form>
    </section>
   <footer>
   <h4 id="footer-text">
&copy;  copy rights 2015 - reserved for ticket raisers
<h4>
   </footer>
 </body>
</html>
