<%@page import="java.sql.*"%>
<%@page import="placementcell.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    String branch = request.getParameter("branch");
    
    
    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,address);
    ps.setString(7,mobile);
    ps.setString(8,branch);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("userreg.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>