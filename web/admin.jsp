<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="admin.css" rel="stylesheet" type="text/css">
        <title>Admin</title>
    </head>
    <body>
        <div class="container">
              <div class="header"> 
               <div class="logodiv"><img src="images/logo.jpg" height="150" width="150"></div>
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
                           <li><a href="governorcouncil.jsp">Governing Council</a></li>
                            <li><a href="ourteam.jsp">Our Team</a></li>
                             <li><a href="applicationandpartnership.jsp">Affiliation & Partnership</a></li>
                              </ul>
                        </li>
                        <li>MANDATE
                            <ul class="abouthover2">
                        <li><a href="#">Identity</a></li>
                            <li><a href="vision.jsp">Vision</a></li>
                            <li><a href="mission.jsp">Mission</a></li>
                            <li><a href="purpos.jsp">Purpose</a></li>
                        </ul>
                        </li>
                        <li>IMPACT
                        <ul class="abouthover3" style="z-index:100">
                             <li><a href="education.jsp">Education</a></li>
                            <li><a href="environment.jsp">Environment</a></li>
                            <li><a href="health.jsp">Health</a></li>
                            <li><a href="womenempower.jsp">Women Empowerment</a></li>
                            <li><a href="ourteam.jsp">Motivational Sessions</a></li>
                            <li><a href="ourteam.jsp">General Awareness</a></li>
                            </ul>
                        </li>
                        <li>GET INVOLVED
                        <ul class="abouthover4">
                            <li><a href="joinasmember.jsp">Join as Member</a></li>
                            <li><a href="volintar.jsp">Be Volunteer</a></li>
                            <li><a href="intarnship.jsp">Internship</a></li>
                            <li><a href="financialsupport.jsp">Donate</a></li>
                            </ul>
                        </li>
                        <li>LATEST UPDATES
                            <ul class="abouthover5">
                           <li><a href="ourteam.jsp">Audio Books</a></li>
                           <li><a href="ourteam.jsp">Reports</a></li>
                           <li><a href="news.jsp">News/Media Coverage</a></li>
                           <li><a href="#">Picture Gallery</a></li>
                           <li><a href="ourteam.jsp">Stories of change</a></li>
                            </ul>
                        </li>
                      
                        <li><a href="content">CONTACT US</a></li>
                         </ul>
                   <div class="searchicon"><img src="images/icon.jpg" height="50" width="50"></div>
                        <div class="searchdiv"><input type="text" placeholder="Search" name="search" ></div>                 
                    </div>
            <div class="adminlogin">
                <div class="adminlogo"><img src="images/logo.png" alt="logo" height="140" width="140"></div>
                <form method="post" action="Login">
                <table>
                    <tr>
                        <td><input type="text" name="user" placeholder="User Name"></td>
                    </tr>
                    
                    <tr>
                        <td><input type="password" name="password" placeholder="Enter your password"></td>
                    </tr>
                     <tr>
                        <td><input type="submit" name="sub" value="Login"></td>
                    </tr>
                    
                    <tr>
                        <td><input type="button" name="butn" value="Change Password"></td>
                    </tr>
                    
                    </table>
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
