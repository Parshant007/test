 <%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stationary donate view</title>
    </head>
    <body>
        
        <form>
            <table border="2">
                <tr>
                    <td>Sno</td>
                    <td>Name</td>
                
                    <td>Mobile</td>
                    <td>Stationary type</td>
                    <td>Collection Address</td>
             
                    <td>Suggestion</td>
                    </tr>
                    <%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                        out.println("Connection Establish");
                        String q="select * from stndonation";
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(q);
                     while(rs.next())
                     {
                         
                     %>
                     <tr>
                         <td><%=rs.getInt("sno")%></td>
                         <td><%=rs.getString("name")%></td>
                         <td><%=rs.getInt("mobile")%></td>
                         <td><%=rs.getString("stationary_type")%></td>
                         <td><%=rs.getString("caddress")%></td>
                         <td><%=rs.getString("suggession")%></td>
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
                 <form method="post" action="stationary_donation_search.jsp" >
                                <table>
                                   <tr>
                                <td>Search</td>
                                <td><input type="text" name="id" placeholder="Enter Sno number only"></td>
                                <td><input type="submit" name="sub" value="Search"></td>
                                </tr>
                                </table>
                    </form>
                <form method="post" action="stationary_donation_del.jsp">
                    <table>
                                <tr>
                                    <td>Delete Record</td>
                                    <td><input type="text" name="id" placeholder="Enter Sno number only"></td>
                                    <td><input type="submit" name="sub" value="Deleter"></td>
                                    </tr>
                                </table>
                            </form>
    </body>
</html>
