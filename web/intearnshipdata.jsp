<%-- 
    Document   : intearnshipdata
    Created on : Jan 12, 2019, 9:07:57 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store information</title>
    </head>
    <body>
          <%
  
        String nam=request.getParameter("na");
        String add=request.getParameter("addr");
        String ci=request.getParameter("city");
        String na=request.getParameter("nation");   
        String ma=request.getParameter("mail");
        String edu=request.getParameter("education");
        String inst=request.getParameter("organisation");
        String dt=request.getParameter("from");
        String t=request.getParameter("too");
        String de=request.getParameter("Details");
       int mob=Integer.parseInt(request.getParameter("mobil"));
              
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                           String q="insert into internshepdb(name,address,city,nation,email,mobile,education,institute,start,end,detail)values('"+nam+"','"+add+"','"+ci+"','"+na+"','"+ma+"',"+mob+",'"+edu+"','"+inst+"',STR_TO_DATE('"+dt+"','%Y-%m-%d'),STR_TO_DATE('"+t+"','%Y-%m-%d'),'"+de+"');";
                             Statement s=con.createStatement();
                           int r=s.executeUpdate(q);
                           if(r>0)
                           {
                               out.println("data inserted");
                           }
                           else
                           {
                               out.println("data is not inserted");
                           }
                       }
                            catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }  
                       
    %>
    </body>
</html>
