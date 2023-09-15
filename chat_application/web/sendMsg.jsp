<%-- 
    Document   : sendMsg
    Created on : Mar 11, 2020, 2:08:50 PM
    Author     : Pasindu Maduranga
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        User u = (User) session.getAttribute("user");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd   hh:mm:ss a");
        ServletContext sc = getServletContext();
        ArrayList<Message> msgs = (ArrayList<Message>) sc.getAttribute("msg_list");
        for (Message message : msgs) {
            if (message.getTo_mobile().equals(u.getMobile())) {

%>


<div class="sender">
    




<span> <%= message.getMessage()%></span><br/><br/>

<small><span>  <%= message.getForm().getName()%> </span>
<span > From <%=message.getForm().getCountry()%></span><br/>
<span> ( <%= message.getForm().getMobile() + ")"%> </span><br/>
<span>  <%=  sdf.format(message.getD()) %> </span>
</small>
</div>
<%
} else if (message.getForm().getMobile().equals(u.getMobile())) {
%>
<div class="resever">

<span> <%= message.getMessage()%></span><br/><br/>
<small class="smal-colr">
<span> <%= sdf.format(message.getD()) %></span>
</small>
</div>

<%
            }
        }

    } catch (Exception e) {
    }


%>
