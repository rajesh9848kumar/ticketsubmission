<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<% 
String email=request.getParameter("email");
String password=request.getParameter("password");
String type=request.getParameter("type");
try
{		
	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
	boolean flag=false;
	ResultSet rs=null;
	if(type.equals("client")){
	 rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
	}else{
		flag=true;
		 rs=st.executeQuery("select * from admin where username='"+email+"' and password='"+password+"'");
	}
	int count=0;
	while(rs.next())
	{
		count=count+1;
	}
	if(count==1)
	{
		if(flag){
					session.setAttribute("email",email); 
	 response.sendRedirect("tech_home.jsp? login success");
		}else{session.setAttribute("email",email); 
	 response.sendRedirect("home.jsp? login success");	 	
	}
	}
	else
	{ response.sendRedirect("login.jsp? login failure");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>