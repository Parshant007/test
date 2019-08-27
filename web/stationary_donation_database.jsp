<%-- 
    Document   : stationary_donation_database
    Created on : Jan 12, 2019, 12:45:25 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.sql.*"%>
        <title>data</title>
    </head>
    <body>
         <%
  
        String nam=request.getParameter("name");
       int mob=Integer.parseInt(request.getParameter("mobile"));
        String stationary=request.getParameter("donate"); 
         String addre=request.getParameter("address");
          String sugg=request.getParameter("message");      
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                           String q="insert into stndonation(name,mobile,stationary_type,caddress,suggession)values('"+nam+"',"+mob+",'"+stationary+"','"+addre+"','"+sugg+"');";
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
