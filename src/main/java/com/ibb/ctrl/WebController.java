/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ibb.ctrl;

import com.ibb.model.Adress;
import com.ibb.model.Person;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.servlet.http.HttpServletResponse;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author trainer
 */
@Setter
@Getter
public class WebController {
    private Person person;
    private List<Person> listPerson;

    public WebController() {
        person=new Person();
        listPerson=new ArrayList<>();
    }

   
    
    
    public void addPerson(){
        listPerson.add(person);
        person = new Person();
        
        Adress a =new Adress("München", "Auf den Wiesen 12");
        
    }
    
    public void navigate(HttpServletResponse response, String target){
        try {
            response.sendRedirect(target);
        } catch (IOException ex) {
            Logger.getLogger(WebController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
