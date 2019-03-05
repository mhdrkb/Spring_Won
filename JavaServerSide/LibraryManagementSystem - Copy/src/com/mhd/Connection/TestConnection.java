/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mhd.Connection;

import java.sql.Connection;

/**
 *
 * @author Java
 */
public class TestConnection {
    public static void main(String[] args) {
        Connection conn = DbConnection.getConnection();
    }
}
