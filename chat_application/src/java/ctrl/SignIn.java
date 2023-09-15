/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctrl;

import Model.User;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pasindu Maduranga
 */
public class SignIn extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            resp.setContentType("text/html");
            String mobile = req.getParameter("m");
            String name = req.getParameter("n");
            String country = req.getParameter("c");

            User u = new User(mobile, name, country);
            HttpSession session = req.getSession();
            session.setAttribute("user", u);
            
            System.out.println(u.getName());
            System.out.println(u.getMobile());
            System.out.println(u.getCountry());
            
            ServletContext sc = getServletContext();
            if (sc.getAttribute("user_list") == null) {
                ArrayList<User> a = new ArrayList<>();
                a.add(u);
                sc.setAttribute("user_list", a);
            } else {
                ArrayList<User> a = (ArrayList<User>) sc.getAttribute("user_list");
                a.add(u);
                sc.setAttribute("user_list", a);
            }
            resp.getWriter().write("Success!");
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("Error!");
        }
    }

}
