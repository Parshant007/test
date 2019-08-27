<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>data inserted</title>
    </head>
    <body>
    <%
  
        String nam=request.getParameter("name");
        String la=request.getParameter("last");
        String fn=request.getParameter("fname"); 
         String dat=request.getParameter("dob");
          String gender=request.getParameter("gen");  
         String bl=request.getParameter("blood");
         String id=request.getParameter("idproof");
         int co=Integer.parseInt(request.getParameter("contact")); 
         String em=request.getParameter("email");
         String cun=request.getParameter("country");
         String st=request.getParameter("state");
         String ci=request.getParameter("city");
         int pi=Integer.parseInt(request.getParameter("pin"));
         String nat=request.getParameter("nation");
         String padd=request.getParameter("paddress");
         String a_add=request.getParameter("a_ddress");
         String edu=request.getParameter("qualifi");
         String bo=request.getParameter("bord");
         String aw=request.getParameter("awards");
         String ho=request.getParameter("hobbi");
         String jo=request.getParameter("join");
         String fee=request.getParameter("money");
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/openeye","root","pruu");
                           out.println("Connection Establish");
                           String q="insert into form(name,last,father,date,gender,blood,id,phone,email,country,state,city,pin,nationality,paddress,a_address,education,board,awards,yourhobbies,joinopeneye,studentfee)values('"+nam+"','"+la+"','"+fn+"',STR_TO_DATE('"+dat+"','%Y-%m-%d'),'"+gender+"','"+bl+"','"+id+"',"+co+",'"+em+"','"+cun+"','"+st+"','"+ci+"',"+pi+",'"+nat+"','"+padd+"','"+a_add+"','"+edu+"','"+bo+"','"+aw+"','"+ho+"','"+jo+"','"+fee+"');";
                             Statement s=con.createStatement();
                           int r=s.executeUpdate(q);
                           if(r>0)
                           {
                               out.println("data inserted");
                           }
                           else
                           {
                               out.println("data is not inserted");
                           }
                       }
                            catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }  
                       
    %>
    </body>
</html>
