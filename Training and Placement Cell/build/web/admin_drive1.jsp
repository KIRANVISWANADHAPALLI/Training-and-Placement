<%@page import="java.sql.*"%>
<%@page import="placementcell.Dbconnection"%>
<%@ page session="true" %>
    <%
    String companyname = request.getParameter("companyname");
    String email = request.getParameter("email"); 
    String drive = request.getParameter("drive");
    String department = request.getParameter("department");
    String address = request.getParameter("address"); 
    String mobile = request.getParameter("mobile");
   
    int id=0;
    
    
    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into drive values(?,?,?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,companyname);
    ps.setString(3,email);
    ps.setString(4,drive);
    ps.setString(5,department);
    ps.setString(6,address);
    ps.setString(7,mobile);
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("admin_drive.jsp?msg=Success");
    }
    else{
    response.sendRedirect("admin_drive.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>