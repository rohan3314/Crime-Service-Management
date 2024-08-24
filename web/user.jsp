<%-- 
    Document   : user
    Created on : 4 Mar, 2020, 11:11:31 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <style>
        body{
            background-color: pink;
        }
    </style>
    
    <body align="center">
        <br>
        </br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h1> <strong> User login </strong></h1>
        <form name="f1" action="user_log" method="post">
            
            <br>            
            <input type="text" name="username" required="" placeholder="Username">
            <br>
            <br>
            <input type="password" name="password" required="" placeholder="Password">
            <br>
            <br>
            <input type="submit" onClick="parent.location='userdetails.jsp'" value="login" >
            <br>
            <div>
                <center>
                <ul><li class="active"><a href="userregister.jsp">Sign up</a></li></ul>
                </center>
            </div>
        </form>
    </body>
</html>
