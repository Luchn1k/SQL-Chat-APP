<%-- 
    Document   : index
    Created on : Mar 9, 2020, 6:53:19 PM
    Author     : Pasindu Maduranga
--%>
<% 
    if (request.getSession().getAttribute("user") != null) {
        response.sendRedirect("Home.jsp");
    }
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="index-bdy">
    <center>
        <div class="index-dv">
        <h1>Sign-in</h1>


        <span>
            Name
        </span>
      
        <input type="text" id="nam"/>

        <span>
            Mobile
        </span>
        <input type="text" id="m"/>
       


        <span>
            Country
        </span>
       
        <select id="cou">
            <option>Sri Lanka</option>
            <option>India</option>
            <option>China</option>
        </select>
      
        <button onclick="signIn();">Sign In</button>
        </div>
    </center>
        <script type="text/javascript" src="js/js.js"></script>
    </body>
</html>
