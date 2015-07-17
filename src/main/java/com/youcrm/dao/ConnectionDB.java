package com.youcrm.dao;

import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionDB
{

    public Connection connection = null;

    public ConnectionDB(){

        try {

            Class.forName("org.postgresql.Driver");

            connection= DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "admin");

            System.out.print("connection now");

        } catch (Exception e) {
            System.out.print("catch now");
            e.printStackTrace();
        }


    }
}
