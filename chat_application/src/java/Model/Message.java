/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Pasindu Maduranga
 */
public class Message {
    User form;
    String to_mobile;
    String message;
    Date d;

    public User getForm() {
        return form;
    }

    public String getTo_mobile() {
        return to_mobile;
    }

    public String getMessage() {
        return message;
    }

    public Date getD() {
        return d;
    }

    public void setForm(User form) {
        this.form = form;
    }

    public void setTo_mobile(String to_mobile) {
        this.to_mobile = to_mobile;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setD(Date d) {
        this.d = d;
    }
    
   
}
