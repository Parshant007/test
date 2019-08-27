<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stationary Del</title>
    </head>
    <body>
        <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                
                    <td>Mobile</td>
                    <td>Stationary type</td>
                    <td>Collection Address</td>
             
                    <td>Suggestion</td>
                    </tr>
                                        <%
    int id=Integer.parseInt(request.getParameter("id"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="select * from stndonation where sno="+id+"";
                             Statement s=con.createStatement();
                            ResultSet rs=s.executeQuery(q);
while(rs.next())
{
%>
    <tr>
                         <td><%=rs.getInt("sno")%></td>
                         <td><%=rs.getString("name")%></td>
                         <td><%=rs.getInt("mobile")%></td>
                         <td><%=rs.getString("stationary_type")%></td>
                         <td><%=rs.getString("caddress")%></td>
                         <td><%=rs.getString("suggession")%></td>
                         </tr>
                    <%
                   }
                    %>
                    </table>
        </form>
                                <%
                rs.close();
                }
catch(Exception ex){
ex.printStackTrace();
}
                %>
    </body>
</html>
