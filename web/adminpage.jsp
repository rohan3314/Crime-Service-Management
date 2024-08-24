<%-- 
    Document   : adminpage
    Created on : 29 Feb, 2020, 1:20:42 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>

    </head>
    <body>
       <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  
  <li><a href="missing.jsp">Missing People</a></li>
  <li><a href="crimearea.jsp">Crime Areas</a></li>
  <li><a href="https://www.tspolice.gov.in/jsp/emergency.jsp">EMERGENCY NUMBERS </a></li>
</ul>
    </body>
</html>
