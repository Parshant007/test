<%-- 
    Document   : admindashbord
    Created on : Jan 12, 2019, 11:06:54 PM
    Author     : P
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="admindashbord.css" rel="stylesheet" type="text/css">
        <title>Dashboard</title>
    </head>
    <body>
        <%
             response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");//http1.1
            response.setHeader("pragma","no-cache");//http 1.0
            response.setHeader("Expire","0");
         if(session.getAttribute("user")==null)
        {
            response.sendRedirect("admin.jsp");
        }
        %>
         <div class="container">
              <div class="header"> 
               <div class="logodiv"><img src="images/logo.jpg" alt="openeye" height="150" width="150"></div>
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
                   <div class="searchicon"><img src="images/icon.jpg" alt="Openeye Foundation" height="50" width="50"></div>
                        <div class="searchdiv"><input type="text" placeholder="Search" name="search" ></div>
                        <div class="dashbord">
      <button onclick="location.href='intarnshipview.jsp'" class="button"><span>Internship </span></button>
<button onclick="location.href='paddonation_view.jsp'" class="button"><span>Donate Sanitary Pad </span></button>
<button class="button"><span>Financial Donation</span></button>
<button class="button"><span>Book Donation </span></button>
<button class="button"><span>Stationary Donation</span></button>
                        </div>   
                        <div class="notificationdiv"><div class="nots"><h3>Announcement</h3></div>
                            <form method="post" action="admindashborddb.jsp">
                                <table cellspacing="20px">
                                    <tr>
                                        <td><input type="text" name="note1" placeholder="Enter notification one"></td>
                                        </tr>                                                                            
                                      <tr>
                                          <td><input type="submit" name="sub" value="Submit"></td>
                                          </tr>
                                    </table>
                            </form>
                            <div class="lock">
                            <form method="post" action="admindashbordview.jsp">
                               <table>
                                <tr>
                                    <td><input type="submit" name="sub" value="View"></td>
                                    </tr>
                                    </table>
                                </form>
                         </div>
                        </div>
                        <div class="imagediv"><table><tr><td><form method="post" action="index.jsp"><input type="submit" value="Work Images"></form></td>
                                <tr><td><form method="post" action="news.jsp"><input type="submit" value="News Images"></form></td></tr></table>
                        </div>
                        <div class="imagediv_cont">
                         
                        </div>
                                      <form action="Logout">
                 <input type="submit" value="logout" class="logout">
                 </form>

                    </div>  
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
