<%-- 
    Document   : paddonation_delete
    Created on : Jan 14, 2019, 5:48:59 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
             <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    <td>Number of Pads</td>
                    <td>Collection Address</td>
                    <td>Other Donation</td>
                    <td>Suggestion</td>                
                    </tr>
                      </table>
        </form>
        <%
       int id=Integer.parseInt(request.getParameter("del"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="delete from pad_donation where sno="+id+"";
                             Statement s=con.createStatement();
                            int r=s.executeUpdate(q);
                            if(r>0)
                            {
                                out.println("Data deleted");
                            }
                            else{
                                out.println("Data is not deleted");
                            }
}              
catch(Exception e)
{
e.printStackTrace();
}
            %>
    </body>
</html>
