 <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admindashborddb</title>
    </head>
    <body>
        <%
            String info1=request.getParameter("note1");
            try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
        out.print("connection establish");
        
        String q="insert into notification(note1)values('"+info1+"');";
       
        Statement st=con.createStatement();
        int r=st.executeUpdate(q);
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
