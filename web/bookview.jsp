
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@page import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donation Book view</title>
    </head>
    <body>
        <form method="post" action="bookdel.jsp">
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Donate Book</td>
                    <td>Book Type</td>
                    <td>Collection address</td>
                    <td>Mobile</td>
                    <td>Feedback</td>
                    </tr>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                            out.println("connection establish");
                            String q="select * from bookdonate";
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery(q);
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
catch(Exception ex)
{
ex.printStackTrace();
}
                %>
                <form method="post" action="booksearch.jsp">
                    <table border="2">
                        <tr>
                            <td><input type="text"  name="del"></td>
                            <td><input type="submit" name="sub" value="Search"></td>
                            </tr>
                        </table>
                    </form>
                <form method="post" action="bookdel.jsp">
                <table border="2">
                    <tr><td><input type="text" name="del"></td>
                    <td><input type="submit" value="Delete"></td>
                    </tr>
                  
                    </table>
                </form>
    </body>
</html>
