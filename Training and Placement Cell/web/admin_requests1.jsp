<%@page import="placementcell.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="placementcell.Dbconnection"%>
<%@ page session="true" %>
    <%

        
   int id=Integer.parseInt(request.getParameter("id"));
    
   String email = request.getParameter("email");
   
   //.placementcell     
    
    try{
     
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("update request set status = 'Accepted' where id = "+id+" ");

 
    int i=ps.executeUpdate();
    if(i>0)
    {
        
   Mail m = new Mail();
   String msg ="User Mail :"+email+"\nMessage:"+"Your Drive Request Accepted";
   m.secretMail(msg,email,email);     
        
    response.sendRedirect("admin_requests.jsp?msg=Success");
    }
    else{
    response.sendRedirect("admin_requests.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>