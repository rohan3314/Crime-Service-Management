<%-- 
    Document   : cirmearea
    Created on : 3 Mar, 2020, 10:03:33 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dangerous area</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <form id="form1" name="form1" method="post" action="area">
    <body align="center">   
        <p><h1>Most Dangerous Crime Areas</h1></p>
            <br>
            <input type="text" name="name" value="" required=""  placeholder="cirme name">
            <br>
            <br>
            <input type="text" name="place" value="" required="" placeholder="crime Place" >
            <br>
            <br>
            <input type="text" name="dist" value="" required=""  placeholder="crime_district">
            <br>
            <br>            
            <input type="submit" name="button" id="button" value="Submit" onclick="return doValue()" /> >            
        
    </form>
    </body>
</html>