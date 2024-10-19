<%@page import="java.sql.*"%>
<%@page import="placementcell.Dbconnection"%>
<%@ page session="true" %>
    <%
        
     int id=Integer.parseInt(request.getParameter("id"));   
    String companyname = request.getParameter("companyname");
    String email = request.getParameter("email"); 
    String drive = request.getParameter("drive");
    String department = request.getParameter("department");
    String address = request.getParameter("address"); 
    String mobile = request.getParameter("mobile");
   
    String user = session.getAttribute("email").toString();
    
    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?)");

    ps.setInt (1,id);
    ps.setString(2,companyname);
    ps.setString(3,email);
    ps.setString(4,drive);
    ps.setString(5,department);
    ps.setString(6,address);
    ps.setString(7,mobile);
    ps.setString(8,user);
    ps.setString(9,"Pending");
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user_viewdrives.jsp?msg=Success");
    }
    else{
    response.sendRedirect("user_viewdrives.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>