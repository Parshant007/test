<%-- 
    Document   : index
    Created on : Mar 11, 2019, 10:22:49 PM
    Author     : P
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="news" method="post" enctype="multipart/form-data">
            <table border="2px">
                <tr>
                    <td colspan="2">Form Detail</td>
                </tr>
                <tr>
                    <td>id</td>
                    <td><input type="number" name="id"></td>
                    </tr>
           
                   
                        <tr>
                            <td>filename1</td>
                            <td><input type="file" name="file"></td>
                            </tr>
                             <tr>
                            <td>filename2</td>
                            <td><input type="file" name="file2"></td>
                            </tr>
                             <tr>
                            <td>filename3</td>
                            <td><input type="file" name="file3"></td>
                            </tr>
                             <tr>
                            <td>filename4</td>
                            <td><input type="file" name="file4"></td>
                            </tr>
                            <tr>
                                <td>submit</td>
                                <td><input type="submit" name="submit"></td>
                                </tr>
                </table>
            </form>
    </body>
</html>
