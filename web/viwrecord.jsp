<%-- 
    Document   : viwrecord
    Created on : Jan 9, 2019, 6:58:01 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view record</title>
    </head>
    <body>
     
<form>
<table border="2">
<tr>
    
<td>ID</td>
<td>NAME</td>
<td>SKILL</td>
</tr>
<%
    int id=Integer.parseInt(request.getParameter("id"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="select * from login where sno="+id+"";
                             Statement s=con.createStatement();
                            ResultSet rs=s.executeQuery(q);
while(rs.next())
{

%>
    <tr><td><%=rs.getInt("sno") %></td>
    <td><%=rs.getString("name") %></td>
   <td><%=rs.getString("lastname") %></td></tr>
        <%

}
%>
    
    </table>
    <%
    rs.close();
  
    }
catch(Exception e)
{
    e.printStackTrace();
    }

%>
</form>
</body>
</html> 
