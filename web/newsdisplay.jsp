<%-- 
    Document   : newsdisplay
    Created on : Apr 4, 2019, 4:44:19 AM
    Author     : P
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="newsdisplay.css" rel="stylesheet" type="text/css">
        <title>NEWS</title>
    </head>
    <body>
        <div class="container">
              <div class="header"> 
               <div class="logodiv"><img src="images/logo.jpg" alt="opne" height="150" width="150"></div>
          <h1>OPEN EYES FOUNDATION</h1>
          <h2>MANI MAJRA CHANDIGARH</h2>
             <p>(OEFMC)</p>
                   
           </div>
                <div class="menudiv" style="z-index: 105">
                    <ul>
                        <li><a href="openeyefront.jsp">HOME</a></li>
                        <li>ABOUT US
                            <ul class="abouthover">
                        <li><a href="background.jsp">Background</a></li>
                         <li><a href="#">Genesis</a></li>
                          <li><a href="#">Fundamental Frame Work</a></li>
                           <li><a href="#">Government Council</a></li>
                            <li><a href="#">Our Team</a></li>
                             <li><a href="#">Application & Partnership</a></li>
                              </ul>
                        </li>
                        <li>MANDATE
                            <ul class="abouthover2">
                        <li><a href="#">Identity</a></li>
                            <li><a href="#">Vision</a></li>
                            <li><a href="#">Mission</a></li>
                            <li><a href="#">Purpose</a></li>
                        </ul>
                        </li>
                        <li>IMPACT
                        <ul class="abouthover3" style="z-index:100">
                             <li><a href="#">Education</a></li>
                            <li><a href="#">Environment</a></li>
                            <li><a href="#">Health</a></li>
                            <li><a href="#">Women Empowerment</a></li>
                            <li><a href="#">Youth Development</a></li>
                            <li><a href="#">General Awareness</a></li>
                            </ul>
                        </li>
                        <li>GET INVOLVE
                        <ul class="abouthover4">
                            <li><a href="#">Join as Member</a></li>
                            <li><a href="#">Be Volunteer</a></li>
                            <li><a href="#">Inlern</a></li>
                            <li><a href="#">Donate</a></li>
                            <li><a href="#">Partnership With Us</a></li>
                            </ul>
                        </li>
                        <li>LATEST UPDATES
                            <ul class="abouthover5">
                           <li><a href="#">Our Camping</a></li>
                           <li><a href="#">Reports</a></li>
                           <li><a href="#">News/Media Coverage</a></li>
                           <li><a href="#">Video Gallery</a></li>
                           <li><a href="#">Picture Gallery</a></li>
                           <li><a href="#">Stories of change</a></li>
                            </ul>
                        </li>
                        <li><a href="content">CONTACT US</a></li>
                         </ul>
                   <div class="searchicon"><img src="images/icon.jpg" height="50" width="50"></div>
                        <div class="searchdiv"><input type="text" placeholder="Search" name="search" ></div>                 
                </div><br>
    
          <%
      
        try{
                 Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                        String q="select * from news ORDER BY id DESC";
                        Statement s=con.createStatement();
                        ResultSet rs=s.executeQuery(q);
                        %>
                        <table border="2" style="width:auto; ">
                            <tr>
                                  <td>Sno.</td>      
                                <th colspan="4">NEWS</th>
                                </tr>
                        <%
           while(rs.next()){
        %>

             
              <tr>
                  <th rowspan="2"><%=rs.getInt("id")%></th>
                </tr>
           
                <tr>
             
                <td><image src="images/<%=rs.getString("filename")%>" width="325" height="325"/></td>
                  <td><image src="images_2/<%=rs.getString("filename2")%>" width="325" height="325"/></td>
                    <td>  <image src="images_3/<%=rs.getString("filename3")%>" width="325" height="325"/></td>
                    <td> <image src="images_4/<%=rs.getString("filename4")%>" width="325" height="325"/></td>
                    </tr>  
        
                    <%
                    }%>
                        </table>
<%
}
catch(Exception e){
out.println(e);
}
                    %>
                            <div class="fooder"><div class="setimg"><a href="#"><img src="sociallink/fb.jpg" alt="image not display"></a>
           <a href="#"><img src="sociallink/g.png" alt="image not display"></a>
          <a href="#"> <img src="sociallink/ins.png" alt="image not display"></a>
                    <a href="#"> <img src="sociallink/y.png" alt="image not display"></a>
                </div>
          <div class="fooderinfoheader"><h2>WORKING AREAS</h2></div>
          <div class="fooderinfo1"><h3>Education</h3><br>
         
             <p> Free Books & Stationery Distribution </p>
             <p> Free Tuition For Needy Students</p>
              <p>Career Guidelines</p>  
          </div>
          <div class="fooderinfo2"><h3>Health</h3><br>
          <p>Menstrual Hygiene & Sanitation</p>
           <p>Medical Health Aid Camps</p>
             <p>Education In Health Issue</p>
              <p>Say No To Drugs</p>
          </div>
          <div class="fooderinfo3"><h3>Social Welfare</h3><br>
          <p>Awareness Camps</p>
          <p>Welfare Of Persons With Disability</p>
          <p>Motivational Sessions For Youth</p>
          <p>Tree Plantation</p>
          </div>
        </div>
  </div>
    </body>
</html>
