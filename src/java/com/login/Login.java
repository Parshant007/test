
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     String unm=request.getParameter("user");
    String pass=request.getParameter("password");
    try{
         Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
          Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from adminpanel where user='"+unm+"' and password='"+pass+"'");
                 while(rs.next())
                  { 
                if(unm.equals("")||pass.equals(""))
               {
            response.sendRedirect("admin.jsp");
           }          
                 
                   else if(unm.equals(rs.getString("user"))&&pass.equals(rs.getString("password")))
        {
            HttpSession s=request.getSession();
            s.setAttribute("user",unm);
           response.sendRedirect("admindashbord.jsp");
        }
                    else{
                        response.sendRedirect("admin.jsp"); 
                    }
                  } 
    }
    catch(Exception ex)
 {
     out.println("somthing gona wrong");
 }
  }    
 }

     


