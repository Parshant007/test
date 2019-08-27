<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
        <title>Vsearch</title>
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
       <%
    int id=Integer.parseInt(request.getParameter("id"));
try
{
  Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                       String q="select * from form where sno="+id+"";
                             Statement s=con.createStatement();
                            ResultSet rs=s.executeQuery(q);
while(rs.next())
{

%>
       
                          <tr>
                            <td><%=rs.getInt("sno")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("last")%></td>
                            <td><%=rs.getString("father")%></td>
                            <td><%=rs.getString("date")%></td>
                            <td><%=rs.getString("gender")%></td>     
                               <td><%=rs.getString("blood")%></td>
                               <td><%=rs.getInt("id")%></td>
                               <td><%=rs.getInt("phone")%></td>
                                  <td><%=rs.getString("email")%></td>
                                     <td><%=rs.getString("country")%></td>
                                        <td><%=rs.getString("state")%></td>
                                           <td><%=rs.getString("city")%></td>
                                               <td><%=rs.getString("pin")%></td>
                                     <td><%=rs.getString("nationality")%></td>
                                        <td><%=rs.getString("paddress")%></td>
                                           <td><%=rs.getString("a_address")%></td>
                                           <td><%=rs.getString("education")%></td>
                                          <td><%=rs.getString("board")%></td>
                                        <td><%=rs.getString("awards")%></td>
                                           <td><%=rs.getString("yourhobbies")%></td>
                                           <td><%=rs.getString("joinopeneye")%></td>
                                           <td><%=rs.getString("studentfee")%></td>
                                           <td><%=rs.getString("employeandbuss")%></td>
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
