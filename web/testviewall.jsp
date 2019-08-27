<%-- 
    Document   : display
    Created on : Mar 12, 2019, 9:57:08 AM
    Author     : P
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Display</title>
    </head>
    <body>
           <table border="2" style="width:auto; ">
            <tr>
                <th>ID</th>
                <th>Heading</th>
                </tr>
        <%
             try{
                 Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                        out.println("connection establish");
                        
                        
                        String q="select * from image_table";
                        Statement s=con.createStatement();
                        ResultSet rs=s.executeQuery(q);
           while(rs.next()){
        %>
     
                <tr>
                    
                 <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("heading")%></td>
               
               </tr>  
           
                    <%
                    }
                    %>
                     </table>
                    <%
}
catch(Exception e){
out.println(e);
}
                    %>
    </body>
</html>
