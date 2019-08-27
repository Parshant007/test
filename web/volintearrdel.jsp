<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volinteardel</title>
    </head>
    <body>
         <form>
            <table border="2">
                 <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Last</td>
                    <td>Father</td>
                    <td>Date</td>
                    <td>Gender</td>
                    <td>Blood</td>
                     <td>id</td>
                               <td>phone</td>
                    <td>Email</td>
                    <td>Country</td>
                    <td>State</td>
                    <td>City</td>
                     <td>Pin</td>
                    <td>Nationality</td>
                      <td>Permanent Address</td>
                        <td>Alternative Address</td>
                          <td>Education</td>
                          <td>Board</td>
                      <td>Awards</td>
                        <td>Hobbies</td>
                          <td>Join openeye</td> 
                          <td>Student_Fee</td>
                          <td>Employee_Fee</td>
                    </tr>
                    </table>
         </form>
         <%
       int id=Integer.parseInt(request.getParameter("id"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="delete from form where sno="+id+"";
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
