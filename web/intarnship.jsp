<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <link href="intarnship.css" rel="stylesheet" type="text/css">
        <title>Internship</title>
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
                   <div class="searchicon"><img src="images/icon.jpg" alt="openeye" height="50" width="50"></div>
                        <div class="searchdiv"><input type="text" placeholder="Search" name="search" ></div>
                            
                    </div>
            <div class="internshipinfo"><h2>Internship</h2></div>
            <div class="internshipcontent"><p>
                    We invite you all to get interned with our foundation for a noble cause by contributing your 
                    valuable time, dedication, skill and the most important – your heart to do this work. We are looking
                    for the experts in field work, content writing, art and graphic designing, good communication and
                    management skills, active fund raisers, event organizers and much more beyond that. Looking for
                    experts does not mean that our foundation has no place for fresher’s or new beginners, we are open 
                    to all those who have that enthusiasm to work hard and to learn and hone their skills at our workplace.
                    We will provide certificate to the interns along with an opportunity to improve their own talent and social 
                    skills during their services to the foundation. Together we all can achieve the status of social activist
                    and satisfaction by providing time without any economic return and benefit. 
 Periods of internship: 15/35/45 days and so on.<br> 
<b>Email: </b><u> openeyes712@gmail.com</u>
           </p>
            </div>
            <div class="formdiv">
                
                         <form method="post" action="intearnshipdata.jsp">
                             <table cellspacing="30px">
                                 <tr>
                                     <td>Name:<br>
                                     <input type="text" name="na" placeholder="enter your good name" required></td>
                                 </tr>
                                 <tr>
                                     <td> Address:<br>
                                     <textarea rows="4" cols="22" name="addr" required></textarea></td>
                                     </tr>
                                     <tr>
                                         <td>City:<br>
                                         <input type="text" name="city" placeholder="Enter your city name" required></td>
                                         </tr>
                                         <tr>
                                             <td>Nationality:<br>
                                             <input type="text" name="nation" placeholder="Enter your Namtionality" required></td>
                                             </tr>
                                             <tr>
                                                 <td>Email:<br>
                                                 <input type="email" name="mail" placeholder="Enter your Email hear" required></td>
                                                 </tr>
                                                 <tr>
                                                     <td>Mobile:<br>
                                                     <input type="text" name="mobil" placeholder="Enter your mobile number" required></td>
                                                     </tr>
                                                     <tr>
                                                         <td>Education<br>
                                                        <input type="text" name="education" placeholder="Enter your Education"></td>
                                                         </tr>
                                                         <tr>
                                                             <td>Name of Institute/school/college/other:<br>
                                                             <input type="text" name="organisation" placeholder="Enter your Instituation name"></td>
                                                             </tr>
                                                             <tr>
                                                                 <td><b>How many days you want to get interned:</b></td>
                                                             </tr>
                                                             <tr>
                                                                 <td>Starting date of Internship:<br><input type="date" name="from"></td>
                                                                 </tr>
                               
                                                                 <tr><td>Ending date of Internship:<br><input type="date" name="too"></td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td>Other Details:<br>
                                                                     <textarea rows="4" cols="22" name="Details"></textarea></td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td><input type="submit" name="sub" value="Submit"></td>
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
