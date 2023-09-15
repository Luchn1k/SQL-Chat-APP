<%-- 
    Document   : Home
    Created on : Mar 9, 2020, 6:57:39 PM
    Author     : Pasindu Maduranga
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
  <body class="home-body">
    <center>
        <div class="home-div">
        <%
            if (session.getAttribute("user") != null) {
                User u =(User)session.getAttribute("user");

        %>


        <h1 id="name"><%= u.getName()  %></h1>
        <button onclick="inv()">Sign Out</button>
        <button onclick="openmsg()">View Message</button>
        <br/>
        <span>
            TO
        </span>
        <br/>
        <select id = "num">
            <% 
            if(application.getAttribute("user_list") != null ){
               ArrayList<User> list = (ArrayList<User>)application.getAttribute("user_list");
               for(User user : list){
                   if(!u.getMobile().equals(user.getMobile())){
                       %>
                       <option><%= user.getMobile() %></option>
                       <%
                   }
               }
            }
            %>
            
            
        </select>
        <br/><br/>

        <span>
            Message
        </span>
        <br/>
        <textarea type="text" id ="msg"></textarea>
        <br/><br/>
        <button onclick="sendMsg();">Send</button>
        <%            } else {
        
                        response.sendRedirect("index.jsp");
            }
        %>
        </div>
    </center>
        <script type="text/javascript" src="js/js.js"></script>
    </body>
</html>
