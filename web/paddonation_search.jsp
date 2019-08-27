<%-- 
    Document   : paddonation_search
    Created on : Jan 14, 2019, 5:49:41 AM
    Author     : P
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        
            <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    <td>Number of pads</td>
                    <td>Collection Address </td>
                    <td>Other Donation</td>
                    <td>Suggestion</td>
                   
                    </tr>
       <%
    int id=Integer.parseInt(request.getParameter("id"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="select * from pad_donation where sno="+id+"";
                             Statement s=con.createStatement();
                            ResultSet rs=s.executeQuery(q);
while(rs.next())
{

%>
         <tr>
                           <td><%=rs.getInt("sno")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("mobile")%></td>
                            <td><%=rs.getString("num_padd")%></td>
                            <td><%=rs.getString("address_collection")%></td>
                            <td><%=rs.getString("other_donate")%></td>
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
catch(Exception e)
{
e.printStackTrace();
}
            %>
    </body>
</html>
