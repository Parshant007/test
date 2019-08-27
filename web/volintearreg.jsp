
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <link href="volintearreg.css" rel="stylesheet" type="text/css">
        <title>Registration</title>
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
                           <li><a href="newsdisplay.jsp">News/Media Coverage</a></li>
                           <li><a href="display.jsp">Picture Gallery</a></li>
                           <li><a href="ourteam.jsp">Stories of change</a></li>
                            </ul>
                        </li>
                      
                        <li><a href="content">CONTACT US</a></li>
                         </ul>
                   <div class="searchicon"><img src="images/icon.jpg" height="50" width="50"></div>
                        <div class="searchdiv"><input type="text" placeholder="Search" name="search" ></div>                 
                    </div>
         <div class="regvoldiv"><h2>Volunteers Registration</h2></div>
                     <div class="formdiv">
                         
                         <form method="post" action="volintearregdata.jsp">
                         <table cellspacing="30px">
                             <tr><td colspan="2"><br><h2><u>Basic Information:-</u></h2></td></tr> 
                         <tr>
                             <td>Name:<br><input type="text" name="name" placeholder="Enter here" required></td>
                             </tr>
                             <tr>
                          <td>Last Name:<br>
                          <input type="text" name="last" placeholder="Enter here" required></td>
                         </tr>
                         <tr>
                             <td>Father's Name<br><input type="text" name="fname" placeholder="Enter here" ></td>
                             </tr>
                         <tr>
                             <td>D.O.B:<br>
                             <input type="date" name="dob" ></td>
                             </tr>
                             <tr>
                                 <td>Gender:<br><br>
                                 <input type="radio"  name="gen" value="Male"> Male &nbsp;
                                     <input type="radio"  name="gen" value="Female"> Female &nbsp;
                                      <input type="radio" name="gen" value="Other"> Other 
                                 </td>
                             </tr>
                             <tr>
                                   <td>Blood Group:<br>
                                   <input type="text" name="blood" maxlength="2" size="3" ></td>
                              </tr>
                              <tr>
                                    <td>Enter your ID Number(Aadhar, Voter card, etc proof):<br>
                                    <input type="text" name="idproof" placeholder="Enter here"></td>
                                  </tr>
                              
                                  <tr><td colspan="4"><h2><u>Contact Information:-<br></u></h2></td></tr>
                          
                         <tr>
                             <td>Contact Number:<br>
                          <input type="text" name="contact" placeholder="Enter here" maxlength="10" ></td>
                          </tr>
                          <tr>
                              <td>E-mail id:<br>
                              <input type="email" name="email" placeholder="Enter here" ></td>
                          </tr>
                          <tr>
                                <td>Country:<br>
                               <input type="text" name="country" placeholder="Enter here" maxlength="20" >
                                </td>
                                </tr>
                                <tr>
                                <td>State:<br>
                                 <input type="text" name="state" placeholder="Enter here"></td>
                                 </tr>
                                 <tr>
                                <td>City:<br>
                                <input type="text" name="city" placeholder="Enter here" ></td>
                                </tr>
                                <tr>
                                <td>Pin_Code:<br>
                                <input type="text" name="pin" placeholder="Enter here" ></td>
                              </tr>
                              <tr>
                                  <td>Nationality:<br>
                                  <input type="text" name="nation" placeholder="Enter here" ></td>
                                  </tr>
                                  <tr>
                                      <td>Permanent Address:<br>
                                      <textarea rows="4" name="paddress" cols="65" ></textarea></td>
                                      </tr>
                                      <tr>
                                      <td>Alternate Address:<br>
                                      <textarea rows="4" name="a_address" cols="65"></textarea>
                                      </tr>
                                      
                         
                             <tr>   <td> <br><h2><u>Qualification:-</u></h2></td></tr>
                                 
            
                             
                         <tr>
                             <td>Educational Qualification:<br>
                            <input type="text" name="qualifi" placeholder="Enter here"></td>
                           </tr>
                           <tr>
                                <td>Board or University:<br>
                                <input type="text" name="bord" placeholder="Enter here"></td>
                               </tr>
                               <tr>
                                   <td>Awards & Certificates:<br>
                                <input type="text" name="awards" placeholder="Enter here"></td>
                               </tr>
                         
                               <tr><td colspan="2"><br><h2><u>Extra Information:-</u></h2></td></tr>
                                
                                   <tr>
                                       <td>Your Hobbies:
                                       <input type="text" name="hobbi" placeholder="Enter here" ></td>
                                       </tr>
                                       <tr>
                                       <td>Why do you want to join our FOUNDATION?:<br>
                                       <textarea rows="4" name="join" cols="65" ></textarea></td>
                                       </tr>
                                    
                                       <tr><td colspan="2"> <br><h2><u>Membership Fee:-</u></h2></td><tr>
                             
                                   <tr>
                                       <td>For Student <b>(Rs. 200)</b>:
                    <input type="radio" name="money" value="200"></td>
                                       </tr>
                                       <tr>
                                       <td>For Employees/Self Employees/Businessman <b>(Rs. 500)</b>:&nbsp;<input type="radio" name="money" value="500"></td>
                          
                                    </tr>
                                   <tr>
                                       <td colspan="4"><u><b>Fill any one Field of Contribution (Optional):-</b></u></td>
                                       </tr>
                                    <tr>
                                        
                                        <td>Monthly Contribution Rs/-:<br>
                                        <input type="text" name="donat" placeholder="Enter here" ></td>
                                        </tr>
                                        <tr>
                                            <td>Yearly Contribution Rs/-:<br>
                                        <input type="text" name="donat" placeholder="Enter here" ></td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" name="sub" value="Submit"></td>
                                            </tr>
                                     </table>
                                     </form><br>
                                   
                                     
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
