<%-- 
    Document   : View
    Created on : Mar 9, 2020, 7:05:08 PM
    Author     : Pasindu Maduranga
--%>

<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="format-detection" content="telephone=no">
        <title>Chat</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>


    <body onload="setInterval(loadMsg, 200);" class="chat-body">
        <div class="chat-ba"></div>
    <center>
        <div class="view-div">
            <%

                User u = (User) session.getAttribute("user");

            %>
            <%            if (application.getAttribute("user_list") != null) {


            %>
            <h1>Justice League Group Chat</h1>
            <br/>
            <button onclick="inv();" class="si-o">Sign Out</button>
            <button onclick="opensend();" class="send">Send Message</button>

            <br/>
            <br/>
            <br/>
            <div id ="div1"  class="chat-div-msg">

            </div>

            <%            } else {

                    response.sendRedirect("index.jsp");
                }
            %>
        </div>
    </center>
    <script type="text/javascript" src="js/js.js"></script>
</body>
</html>
