<%-- 
    Document   : retrive
    Created on : Apr 2, 2019, 3:24:39 AM
    Author     : P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String unm=request.getParameter("user");
    String pass=request.getParameter("password");
    try{
         Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
          Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from adminpanel where user='"+unm+"' and password='"+pass+"'");
                 while(rs.next())
                  { 
                 
                    if(unm.equals(rs.getString("user"))&&pass.equals(rs.getString("password")))
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
        %>
       </body> 
</html>
