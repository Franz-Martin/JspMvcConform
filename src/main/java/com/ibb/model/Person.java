/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ibb.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * Plain
 * Old
 * Java
 * Object
 * 
 * 
 * @author trainer
 */
@Data
public class Person {
    private String firstname;
    private String lastname;
    private String city;

    public Person() {
    }
    
    
    

    public Person(String firstname, String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }
    
    


   
    
    
}
