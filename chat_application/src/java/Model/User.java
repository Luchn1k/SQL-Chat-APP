/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Pasindu Maduranga
 */
public class User {
    private String mobile;
    private String name;
    private String country;

    
     public User(String mobile,String name,String country){
         setName(name);
         setMobile(mobile);
         setCountry(country);
    }
    
    public String getMobile() {
        return mobile;
    }

    public String getName() {
        return name;
    }

    public String getCountry() {
        return country;
    }
   

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
