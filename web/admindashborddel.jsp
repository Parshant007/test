 <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <table border="2">
            <tr>
                <td>sno</td>
                <td>note1</td>
                 <td>note2</td>
                  <td>note3</td>
                   <td>note4</td>
                </tr>
            </table>
        <%
       int id=Integer.parseInt(request.getParameter("del"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="delete from notification where sno="+id+"";
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
