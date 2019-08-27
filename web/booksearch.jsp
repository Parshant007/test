
         <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Del</title>
    </head>
    <body>
        <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Donate Book</td>
                    <td>Book Type</td>
                    <td>Collection Address</td>
                    <td>Mobile</td>
                    <td>Feedback</td>
                </tr>
                      <%
    int id=Integer.parseInt(request.getParameter("del"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="select * from bookdonate where sno="+id+"";
                             Statement s=con.createStatement();
                            ResultSet rs=s.executeQuery(q);
while(rs.next())
{

%>
                <tr>
                    <td><%=rs.getInt("sno")%></td>
                    <td><%=rs.getString("name")%></td>
                     <td><%=rs.getString("donat_book")%></td> 
                     <td><%=rs.getString("type_of_book")%></td> 
                     <td><%=rs.getString("raddress")%></td>
                      <td><%=rs.getString("mobile")%></td>
                       <td><%=rs.getString("suggesion")%></td>
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
