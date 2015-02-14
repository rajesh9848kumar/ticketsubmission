  <%
if(session.getAttribute("email")==null){
		response.sendRedirect("login.html");
}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<Script language="JavaScript" Src="js/complaints.js"></Script>
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
					<li><a href="user_profile.jsp">Profile</a></li>
					<li><a href="submitcomplaint.jsp" class="active">Raise Ticket</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
		</div>
  </header>
  <section>
		<div class="wrapper-reg1">
   <center> <h2 class="frm-title" >Complaint Registration</h2>
  <form method="post" action="submitcomplaint1.jsp" onsubmit="return validation(this)" class="reg-form">
<table>
<tr>
<td>Complaint Name</td>
<td><input type="text" name="complaint_name" style="padding:6px;width:450px;border:1px solid #cccccc;border-top:1px solid #9a9a9a;"></td>
</tr>
<tr>
<td>Complaint Subject</td>
<td><input type="text" name="complaint_sub" style="padding:6px;width:450px;border:1px solid #cccccc;border-top:1px solid #9a9a9a;"></td>
</tr>
<tr>
<td>Complaint Details</td>
<td><textarea type="text" name="complaint_details" style="padding: 6px; width: 450px; border-width: 1px; border-style: solid; border-color: rgb(154, 154, 154) rgb(204, 204, 204) rgb(204, 204, 204); margin-top: 0px; margin-bottom: 0px; height: 157px;"></textarea></td>
</tr>
<input type="hidden" value="no" name="vflag"/>
<tr>
<td align="center" colspan="2"> <input type="submit" class="frm-butt" value="Submit"></td>
</tr>
</table>
</form>
</center>
	</div>
 </section>
   <footer>
   <h4 id="footer-text">
&copy;  copy rights 2015 - reserved for ticket raisers
<h4>
   </footer>
 </body>
</html>