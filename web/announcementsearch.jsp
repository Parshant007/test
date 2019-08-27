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
        <%
      int i=Integer.parseInt(request.getParameter("sno"));
        try{
                 Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                        out.println("connection establish");
                        
                        
                        String q="select * from image_table where id="+i+"";
                        Statement s=con.createStatement();
                        ResultSet rs=s.executeQuery(q);
           while(rs.next()){
        %>
        <table border="2" style="width:auto; ">
            <tr>
                <th>ID</th>
                <th colspan="4"><%=rs.getString("heading")%></th>
                </tr>
                <tr>  <td rowspan="2"><%=rs.getInt("id")%></td>
                    <td colspan="4">
                        <p><%=rs.getString("description")%><p>
                        </td>
                    </tr>
                <tr>
                  
                    
                <td style="border: solid blue;"><image src="images/<%=rs.getString("filename")%>" width="325" height="325"/></td>
                  <td><image src="images_2/<%=rs.getString("filename2")%>" width="325" height="325"/></td>
                    <td>  <image src="images_3/<%=rs.getString("filename3")%>" width="325" height="325"/></td>
                    <td> <image src="images_4/<%=rs.getString("filename4")%>" width="325" height="325"/></td>
                    </tr><br>
            </table>
                    <%
                    }
}
catch(Exception e){
out.println(e);
}
                    %>
    </body>
</html>
