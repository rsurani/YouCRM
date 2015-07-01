package com.youcrm.executor.user;

import com.youcrm.action.user.UserAction;
import com.youcrm.dao.ConnectionDB;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mayank on 6/22/2015.
 */
public class UserService {

    private static ConnectionDB con = new ConnectionDB();
    private static PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public boolean CheckUserNameandPassword(String userName, String userPassword) {
        System.out.println("UserMaster");
        System.out.println("UserName: " + userName);
        System.out.println("Password: " + userPassword);
        System.out.println("Connection: " + con.connection);
        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_master WHERE user_login_id= ? and user_password=?");
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, userPassword);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {

                if (rs.getString(3).equals(userName) && rs.getString(4).equals(userPassword)) {
                    System.out.println("UserName: " + rs.getString(3));
                    System.out.println("Password: " + rs.getString(4));
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean insertUser(int userRole, String userName, String userPassword, int userDesignation, int userContact, String userEmail) {

        System.out.println("Inside Insert User");

        try {

            String query = "INSERT INTO youcrm.user_master(user_role_id,user_login_id,user_password,designation_id,contact_number,email_id) VALUES ('" + userRole + "','" + userName + "','" + userPassword + "','" + userDesignation + "','" + userContact + "','" + userEmail + "')";
            System.out.println("Query: " + query);

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.user_master(user_role_id,user_login_id,user_password,designation_id,contact_number,email_id) VALUES (?,?,?,?,?,?)");
            preparedStatement.setInt(1, userRole);
            preparedStatement.setString(2, userName);
            preparedStatement.setString(3, userPassword);
            preparedStatement.setInt(4, userDesignation);
            preparedStatement.setInt(5, userContact);
            preparedStatement.setString(6, userEmail);

            preparedStatement.execute();

            return true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public List<List<String>> getUserListService()
    {

        List<List<String>> result = new ArrayList<List<String>>();

        try
        {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_master");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {

                row = new ArrayList<String>();

                int userId = resultSet.getInt("user_id");

                row.add(String.valueOf(userId));
                row.add(String.valueOf(resultSet.getInt("user_role_id")));
                row.add(resultSet.getString("user_login_id"));
                row.add(String.valueOf(resultSet.getInt("designation_id")));
                row.add(String.valueOf(resultSet.getInt("contact_number")));
                row.add(resultSet.getString("email_id"));
                row.add("<i class='fa fa-pencil' data-value='"+userId+"'></i>&emsp;<i class='fa fa-trash-o' data-value='"+userId+"'></i>");

                result.add(row);

            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return result;

    }

    public boolean isDesignationAdded(String userDesignation) {

        try {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.designation(designation_name) VALUES (?)");
            preparedStatement.setString(1, userDesignation);
            preparedStatement.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }


    public ArrayList<UserAction> getDesignationListService() {

        ArrayList<UserAction> designationList = new ArrayList<UserAction>();
        try {


            preparedStatement = con.connection.prepareStatement("SELECT designation_id,designation_name FROM youcrm.designation");
            resultSet = preparedStatement.executeQuery();


            while (resultSet.next()) {

                UserAction userAction = new UserAction();

                userAction.setUserDesignation(resultSet.getInt("designation_id"));

                userAction.setDesignation(resultSet.getString("designation_name"));

                designationList.add(userAction);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return designationList;

    }


}
