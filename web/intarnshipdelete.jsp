
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            delete
        </title>
    </head>
    <body>
           <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Address</td>
                    <td>City</td>
                    <td>Nation</td>
                    <td>Email</td>
                    <td>Mobile</td>
                    <td>Education</td>
                    <td>Institute</td>
                    <td>Start Internship</td>
                    <td>End Internship</td>
                    <td>Other Detail</td>
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
                       String q="delete from internshepdb where sno="+id+"";
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
