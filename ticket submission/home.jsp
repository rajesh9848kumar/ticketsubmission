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
					<li><a href="home.jsp" class="active">Home</a></li>
					<li><a href="user_profile.jsp">Profile</a></li>
					<li><a href="submitcomplaint.jsp">Raise Ticket</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
		</div>
  </header>
  <section>
	<% 
			try
			{
			
          	Connection con=databasecon.getconnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select u.name,cr.complaint_sub,cr.complaint_details,cr.reply from complaint_reg cr,user u where u.email=cr.complaint_email and u.email='"+session.getAttribute("email")+"'");
			//ResultSet rs=st.executeQuery("select complaint_reg.complaint_sub,user.name,complaint_reg.complaint_details from complaint_reg INNER JOIN user ON user.email=complaint_reg.complaint_email where complaint_reg.status='answered'");
   %>
   
		<h1> </h1>
	<%
           while(rs.next())
          {
    %> 
		<div class="content">
			<label>Name :</label><span>  <%=rs.getString("name")%> </span><br><br>
			<label>Subject :</label><p> <%=rs.getString("complaint_sub")%></p><br>
			<label>Description :</label><p> <%=rs.getString("complaint_details")%></p>
		</div>
	<%	
            }
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
   %>
    </section>
   <footer>
   <h4 id="footer-text">
&copy;  copy rights 2015 - reserved for ticket raisers
<h4>
   </footer>
 </body>
</html>
