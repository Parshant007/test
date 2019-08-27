<%-- 
    Document   : donationbookdb
    Created on : Jan 12, 2019, 10:21:45 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>db</title>
    </head>
    <body>
        <%
        String nam=request.getParameter("name");
        String add=request.getParameter("donate");
        String ci=request.getParameter("book");
        String na=request.getParameter("address");   
        String ma=request.getParameter("suggession");
      int mob=Integer.parseInt(request.getParameter("mobile"));
              
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                           String q="insert into bookdonate(name,donat_book,type_of_book,raddress,mobile,suggesion)values('"+nam+"','"+add+"','"+ci+"','"+na+"',"+mob+",'"+ma+"');";
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
