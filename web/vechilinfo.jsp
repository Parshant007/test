<%-- 
    Document   : vechilinfo
    Created on : Apr 15, 2019, 1:49:52 AM
    Author     : P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.xdevapi.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                 <link href="vechilnfo.css" rel="stylesheet" type="text/css">
        <title>Vechile info</title>
    </head>
    <body>
        <div class="container">
           <div class="head"> 
              
               <h1>Common Platform For
               Vehicle Registration
               Sector</h1>
                   
           </div>
                <div class="menudiv" style="z-index: 105">
                    <ul>
                        <li><a href="openeyefront.jsp">HOME</a></li>
                        <li>ABOUT US
                      
                        </li>
                        <li>VEHICLE INFO
                            <ul class="abouthover2">
                            <li><a href="vision.jsp">Through RC </a></li>
                            <li><a href="mission.jsp">Through Numberplate</a></li>
                          
                        </ul>
                        </li>
                        <li>POLLUTION RATIO
                        <ul class="abouthover3" style="z-index:100">
                             <li><a href="education.jsp">State Wise</a></li>
                            <li><a href="environment.jsp">City Wise</a></li>
                      
                            </ul>
                        </li>
                        <li>ACCIDENT ANYLYSIS
                        <ul class="abouthover4">
                           <li><a href="education.jsp">State Wise</a></li>
                            <li><a href="environment.jsp">City Wise</a></li>
                            </ul>
                        </li>
                        <li>FUEL CONSUMPTION                        
                        </li>
                      
                        <li><a href="content">LATEST UPDATES</a></li>
                         </ul>
                                
                    </div>
            <div class="vechileinfo">
                <form>
                <table>
                    <tr>
                        <td>Through RC:<br>
                            <input type="text" placeholder="Enter your RC number"></td>
                    </tr>
                    <tr>
                        </tr>
                        <tr></tr>
                        <tr>
                        </tr>
                        <tr></tr>
                    <tr>
                      <td>Through Numberplate:<br>
                        <input type="text" placeholder="Enter your number Plate"></td>
                    </tr>
                    <tr>
                        <td>
                        <input type="submit" name="sub" value="View">
                        </td>
                        </tr>
                    </table>
                    </form>
            </div>
            <div class="viewinfo">
                </div>
            </div>
    </body>
</html>
