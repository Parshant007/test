    <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Delete</title>
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
                </table>
            </form>
            <%
    int id=Integer.parseInt(request.getParameter("del"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="delete from bookdonate where sno="+id+"";
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
