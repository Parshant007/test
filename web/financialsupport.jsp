<%-- 
    Document   : financialsupport
    Created on : Jan 6, 2019, 2:59:26 AM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link href="financialsupport.css" rel="stylesheet" type="text/css">
        <title>Financial Support</title>
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
            <div class="internshipinfo"><h2>Donation</h2></div>
          
            <div class="formdiv">
                         <form method="post" action="volintearregdata.jsp">
                             <table cellspacing="30px">
                                 <tr>
                                     <td>Donation:</td>
                                     </tr>
                                     <tr>
                                   <td>  <input type="radio" name="amount" value="50"> 50</td><td>
                                     <input type="radio" name="amount" value="100"> 100</td>
                                     </tr>
                                     <tr>
                                     <td><input type="radio" name="amount" value="200"> 200</td><td>                            
                                    <input type="radio" name="amount" value="500"> 500</td>
                                    </tr>
                                    <tr>
                                  <td><input type="radio" name="amount" value="1,000"> 1,000</td>
                                       <td><input type="radio" name="amount" value="1,500"> 1,500</td>
                                       </tr>
                                       <tr>
                                      
                                        <td><input type="radio" name="amount" value="2,100"> 2,100</td>
                                       <td><input type="radio" name="amount" value="Other" onclick="myfun()"> Other
                                      <input type="text" name="money" placeholder="enter your amount" style="display:none;" id="mytext"></td>
                                       <script>
                                          function myfun() {
  var x = document.getElementById("mytext");
 
  if (x.style.display === "none") {
    x.style.display = "block";
  }
}
  
                                           </script>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><b>Please donate every month <b>or</b> you can cancel any time if you want:</b></td>
                                        </tr>
                                        <tr>
                                            <td>Yes, Donate monthly:</td><td> <input type="radio" name="Dmonthly" value="Yes"></td>
                                            </tr>
                                            <tr>
                                            <td>No, Donate once:</td>
                                            <td><input type="radio" name="Dmonthly" value="No"></td>
                                            </tr>
                                            <tr>
                                                <td >Where do you live:<br>
                                                
                                                    <input type="text" name="live" placeholder="Enter here"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Your Full Name:<br>
                                                        <input type="text" name="fulname" placeholder="Enter here"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Your Mobile Number:<br>
                                                            <input type="text" name="number"  placeholder="Enter here" maxlength="10"></td>
                                                            </tr>
                                                             <tr>
                                                            <td>Your E-mail ID<br>
                                                            <input type="email" name="mumber" placeholder="Enter here"></td>
                                                            </tr>                                                              <tr>
                                                                    <td><input type="submit" value="Proceed"></td>
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
