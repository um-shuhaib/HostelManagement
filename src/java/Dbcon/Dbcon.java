/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */
public class Dbcon {
    Connection con=null;
    public Connection getConnection()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement","root","");
            
        } catch (Exception e) {
            System.err.print(e.toString());       
        }
        return con;
    }    
}
