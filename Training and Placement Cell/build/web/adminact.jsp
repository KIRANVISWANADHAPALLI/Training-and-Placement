<%@page import="java.sql.*"%>
<%@page import="placementcell.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from admin where username= '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

                   
    response.sendRedirect("adminhome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("admin.jsp?m1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>