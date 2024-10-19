/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package placementcell;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

/**
 *
 * @author java2
 */
public class Upload extends HttpServlet {

    private static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Connection con;
            PreparedStatement pstm = null;
             String username = "";
             String password = "";
             String email = "";
             String dob = "";
             String gender = "";
             String branch = "";
             String aggregate = "";
             String mobile = "";
             
             String pic = "";
            // String username = "";
            String cd = "";
          
            try {
                boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
                if (!isMultipartContent) {
                    return;
                }
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                try {
                    List<FileItem> fields = upload.parseRequest(request);
                    Iterator<FileItem> it = fields.iterator();
                            if (!it.hasNext()) {
        return;
        }
        while (it.hasNext()) {
        FileItem fileItem = it.next();
        if (fileItem.getFieldName().equals("username")) {
            username = fileItem.getString();
            System.out.println("username" + username);

        }
     if (fileItem.getFieldName().equals("password")) {
            password = fileItem.getString();
            System.out.println("password" + password);

        }
      if (fileItem.getFieldName().equals("email")) {
            email = fileItem.getString();
            System.out.println("email" + email);

        }
       if (fileItem.getFieldName().equals("dob")) {
            dob = fileItem.getString();
            System.out.println("dob" + dob);

        }
        if (fileItem.getFieldName().equals("gender")) {
            gender = fileItem.getString();
            System.out.println("gender" + gender);

        }
         if (fileItem.getFieldName().equals("branch")) {
            branch = fileItem.getString();
            System.out.println("branch" + branch);

        }
        
        if (fileItem.getFieldName().equals("aggregate")) {
            aggregate = fileItem.getString();
            System.out.println("aggregate" + aggregate);
        }
       if (fileItem.getFieldName().equals("mobile")) {
            mobile = fileItem.getString();
            System.out.println("mobile" + mobile);
        }
        
        else {

        }
        boolean isFormField = fileItem.isFormField();
        if (isFormField) {
        } else {
            try {
        con = Dbconnection.getConnection();
        pstm = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
        System.out.println("getD " + fileItem.getName());
        String str = getStringFromInputStream(fileItem.getInputStream(),fileItem.getContentType());
        
        System.out.println(str);
        //for get extension from given file
        String b = fileItem.getName().substring(fileItem.getName().lastIndexOf('.'));
        System.out.println("File Extension" + b);

        
        pstm.setString(1, username);
        pstm.setString(2, password); 
        pstm.setString(3, email);
        pstm.setString(4, dob);
        pstm.setString(5, gender);
        pstm.setString(6, branch);
        pstm.setString(7, aggregate);
        pstm.setString(8, mobile);
        pstm.setString(9, str);
        

        /*Cloud Start*/
        File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\Upload\\"+fileItem.getName());
        FileWriter fw = new FileWriter(f);
        fw.write(str);
        fw.close();
        //Ftpcon ftpcon = new Ftpcon();
        //ftpcon.upload(f, fname);
        /*Cloud End*/
        int i = pstm.executeUpdate();
        if (i == 1) {
            response.sendRedirect("user.jsp?msg=success");
        } else {
            response.sendRedirect("userreg.jsp?msgg=failed");
        }
        con.close();
    } catch (Exception e) {
        out.println(e.toString());
    }
}
                    }
                } catch (FileUploadException e) {
                } catch (Exception ex) {
                    Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
                }
            } finally {
                out.close();
            }
        }
    }

    private static String getStringFromInputStream(InputStream is,String fileType) {
        String line = null;
       
             
           
        if(fileType!=null){ //is a docx
    try {
    //    fis = new FileInputStream(new File(fileName));
        XWPFDocument doc = new XWPFDocument(is);
        XWPFWordExtractor extract = new XWPFWordExtractor(doc);
         System.out.println(extract.getText());
       return extract.getText();
       
    } catch (IOException e) {

        e.printStackTrace();
    }
        }
         else { //is not a docx
        try {
             HWPFDocument doc = new HWPFDocument(is);
        //    WordExtractor extractor = new WordExtractor(doc);
         //   System.out.println(extractor.getText());
        } catch (IOException e) {
            e.printStackTrace();
        }
        }
       return line ;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
