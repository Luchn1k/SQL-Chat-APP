/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctrl;

import Model.Message;
import Model.User;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pasindu Maduranga
 */
public class SendSms extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String mobile = req.getParameter("m");
            String msg = req.getParameter("msg");
            User u = (User) req.getSession().getAttribute("user");
            Message message = new Message();
            message.setD(new Date());
            message.setForm(u);
            message.setTo_mobile(mobile);
            message.setMessage(msg);
            ServletContext sc = getServletContext();
            if (sc.getAttribute("msg_list") != null) {
                ArrayList<Message> ms = (ArrayList< Message>) sc.getAttribute("msg_list");
                ms.add(message);
                sc.setAttribute("msg_list", ms);
            } else {
                ArrayList<Message> ms = new ArrayList<>();
                ms.add(message);
                sc.setAttribute("msg_list", ms);

                resp.getWriter().write("Success!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("Error!");
        }

    }
}
