<%@ page import="java.sql.*,java.io.*,java.util.*,databaseconnection.*" %>
<%
session.invalidate();
response.sendRedirect("login.html");
%>