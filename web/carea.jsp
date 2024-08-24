<%-- 
    Document   : carea
    Created on : 4 Mar, 2020, 4:15:40 PM
    Author     : Lenovo
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Crime Area Information</title>
		<meta name="description" content="Sticky Table Headers Revisited: Creating functional and flexible sticky table headers" />
		<meta name="keywords" content="Sticky Table Headers Revisited" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize_1.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
        <style>
            input[type="checkbox"]{
  width: 30px; /*Desired width*/
  height: 30px; /*Desired height*/
}
        </style>
	<body align="center">
            <form name="ff1" action="CollegeDetails" method="POST">
		<div class="container">
			<!-- Top Navigation -->
			
			<header>
				<h1>Crime Area Information</h1>	
				
			</header>
			<div class="component">
				
				<table class="">
					<thead>
				
						
                        <th>Name</th>
                        <th>Place</th>
                        <th>District</th>
                        
						
					</thead>
					<tbody>
                                             <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crimenew","root","password");
                    Statement st=con.createStatement();
                    String query="SELECT * FROM crime";
                    ResultSet rs1=st.executeQuery(query);
                        //ResultSet rs1=Common_DB.ViewTable("counselling", "college");
                        while(rs1.next())
                        {
                     %>
						
                     <tr>
                        <td><%=rs1.getString("name")%></td>
                        <td><%=rs1.getString("place")%></td>
                        <td><%=rs1.getString("dist")%></td>
                        
                     </tr>                                
						
                                                <%
            }
            %>
					</tbody>
                                       </table>
                                     <a href="index.jsp">HOME</a>  
			
				
			
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
		<script src="js/jquery.stickyheader.js"></script>
                </form>	
	</body>
</html>
