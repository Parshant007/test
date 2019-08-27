<%-- 
    Document   : paddonation_database
    Created on : Jan 12, 2019, 1:13:50 AM
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
        String nam=request.getParameter("na");
           String addre=request.getParameter("addr");
          int mob=Integer.parseInt(request.getParameter("mobil"));
          int org=Integer.parseInt(request.getParameter("organisation"));  
          String col=request.getParameter("collect");
                String ot=request.getParameter("other");
                      String feed=request.getParameter("feedback");
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                           String q="insert into pad_donation(name,address,mobile,num_padd,address_collection,other_donate,suggesion)values('"+nam+"','"+addre+"',"+mob+","+org+",'"+col+"','"+ot+"','"+feed+"');";
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
