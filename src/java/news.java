/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author P
 */
@WebServlet(urlPatterns = {"/news"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize=1024 * 1024 * 10,
        maxRequestSize= 1024 * 1024 * 50
        )
public class news extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet news</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet news at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
       PrintWriter out=response.getWriter();
       
 int id=Integer.parseInt(request.getParameter("id"));
 Part part=request.getPart("file");
 Part part2=request.getPart("file2");
 Part part3=request.getPart("file3");
 Part part4=request.getPart("file4");
 String fileName=extractFileName(part);
  String fileName2=extractFileName(part2);
   String fileName3=extractFileName(part3);
    String fileName4=extractFileName(part4);

 String savePath="C:\\Users\\P\\Documents\\NetBeansProjects\\openeyes\\web\\images"+File.separator+fileName;
  String savePath2="C:\\Users\\P\\Documents\\NetBeansProjects\\openeyes\\web\\images_2"+File.separator+fileName2;
   String savePath3="C:\\Users\\P\\Documents\\NetBeansProjects\\openeyes\\web\\images_3"+File.separator+fileName3;
    String savePath4="C:\\Users\\P\\Documents\\NetBeansProjects\\openeyes\\web\\images_4"+File.separator+fileName4;
 File fileSaveDir=new File(savePath);
  File fileSaveDir1=new File(savePath2);
   File fileSaveDir2=new File(savePath3);
    File fileSaveDir3=new File(savePath4);
 for(int i=0;i<4;i++){
     if(i==0){
 part.write(savePath+File.separator);
     }
     if(i==1)
     {
 part2.write(savePath2+File.separator);
     }
     if(i==2)
     {
     part3.write(savePath3+File.separator);
     }
     if(i==3)
     {
 part4.write(savePath4+File.separator);
 }
 }
 try{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
 PreparedStatement pst=con.prepareStatement("insert into news values(?,?,?,?,?,?,?,?,?)");
 pst.setInt(1,id);
 pst.setString(2,fileName);
 pst.setString(3,fileName2);
 pst.setString(4,fileName3);
 pst.setString(5,fileName4);
 pst.setString(6,savePath);
 pst.setString(7,savePath2);
 pst.setString(8,savePath3);
 pst.setString(9,savePath4);
 pst.executeUpdate();
 out.println("<center><h1>Image inserted Successfully....<h1></center>");
 out.println("<center><a href='newsdisplay.jsp?id="+id+"'>Display</a></center>");
 }
 catch(  ClassNotFoundException | SQLException ex)
 {
     out.println("somthing gona wrong");
 }
    
    }
 

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    private String extractFileName(Part part) {
       String contentDisp=part.getHeader("content-disposition");
       String[] items=contentDisp.split(";");
       for(String s:items)
       {
           if(s.trim().startsWith("filename"))
 
           {
               return s.substring(s.indexOf("=")+2,s.length()-1);
           }
       }
       return "";
    }
       }

