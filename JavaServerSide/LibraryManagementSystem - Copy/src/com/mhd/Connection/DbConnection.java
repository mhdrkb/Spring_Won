/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mhd.Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Java
 */
public class DbConnection {
    private static final String HOST = "jdbc:mysql://localhost:3306";
    private static final String DBNAME = "lms";
    private static final String URL = HOST + "/" + DBNAME;
    private static Connection conn = null;
    
    public static Connection getConnection() {
        
        try {
            conn = DriverManager.getConnection(URL, "root", "1234");
            System.out.println("::Connected::");
        } catch (SQLException ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
        return conn;
    }
   
 
}
