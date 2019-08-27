<%-- 
    Document   : paddonation_view
    Created on : Jan 14, 2019, 5:48:22 AM
    Author     : P
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View</title>
    </head>
    <body>
        <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                    <td>Address</td>
                    <td>Mobile</td>
                    <td>Number of packet</td>
                    <td>Address Collection</td>
                    <td>Other Donation</td>
                    <td>Suggestion</td>
                    </tr>
                    <%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                        out.println("Connection Establish");
                        String q="select * from pad_donation";
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(q);
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
                    catch(Exception e){
                            e.printStackTrace();
                            }
                %>
                 <form method="post" action="paddonation_search.jsp" >
                                <table>
                                   <tr>
                                <td>Search</td>
                                <td><input type="text" name="id" placeholder="Enter Sno number only"></td>
                                <td><input type="submit" name="sub" value="Search"></td>
                                </tr>
                                </table>
                    </form>
                <form method="post" action="paddonation_delete.jsp">
                    <table>
                                <tr>
                                    <td>Delete Record</td>
                                    <td><input type="text" name="del" placeholder="Enter Sno number only"></td>
                                    <td><input type="submit" name="sub" value="Deleter"></td>
                                    </tr>
                                </table>
                            </form>
    </body>
</html>
