package com.youcrm.executor.user;

import com.youcrm.action.user.UserAction;
import com.youcrm.dao.ConnectionDB;
import org.eclipse.jdt.internal.core.SourceType;
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

    public boolean checkUserNameandPassword(String userName, String userPassword) {

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

    public boolean isUserInserted(int userRole, String userName, String userPassword, int userDesignation, int userContact, String userEmail) {

        System.out.println("Inside Insert User");

        try {

            String query = "INSERT INTO youcrm.user_master(user_role_id,user_login_id,user_password,designation_id,contact_number,email_id) VALUES ('" + userRole + "','" + userName + "','" + userPassword + "','" + userDesignation + "','" + userContact + "','" + userEmail + "')";

            System.out.println("Query: " + query);

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.user_master(user_role_id,user_login_id,user_password,designation_id,contact_number,email_id,action) VALUES (?,?,?,?,?,?,true)");

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

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_master WHERE action = true");

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

                row.add("<a href='#' data-value='"+ userId +"' id='"+ userId +"' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='#' id='"+ userId +"' data-value='"+ userId +"' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

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

            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.designation(designation_name,action) VALUES (?,true)");

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

                System.out.println("Designation: "+ designationList);
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return designationList;

    }

    public boolean isUserDeleted(int userID){

        System.out.println(userID);

        try{

            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.user_master SET action=false WHERE user_id=?");

            preparedStatement.setInt(1,userID);

            preparedStatement.executeUpdate();

            return true;

        }catch(Exception e){

            e.printStackTrace();

        }

        return false;
    }

    public boolean isUserUpdated(int userID,int userRole, String userName, String userPassword, int userDesignation, int userContact, String userEmail){

        try{

            System.out.println("Update UserId:"+userID);

            System.out.println("UserName" + userName);

            System.out.println("UserRole"+userRole);

            System.out.println("UserPassword"+userPassword);

            System.out.println("UserDesignation: "+userDesignation);

            System.out.println("Contact: " + userContact);

            System.out.println("Email: "+ userEmail);

            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.user_master SET user_role_id=? ,user_login_id=? ,user_password=? ,designation_id=? ,contact_number=? ,email_id=?  WHERE user_id=?");

            preparedStatement.setInt(1, userRole);

            preparedStatement.setString(2, userName);

            preparedStatement.setString(3, userPassword);

            preparedStatement.setInt(4, userDesignation);

            preparedStatement.setInt(5, userContact);

            preparedStatement.setString(6, userEmail);

            preparedStatement.setInt(7,userID);

            preparedStatement.executeUpdate();

            return true;

        }catch(Exception e){

            e.printStackTrace();

        }

        return false;
    }

    public UserAction getUserRecord(int id)
    {

        UserAction userAction = new UserAction();

        System.out.println("1");

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.user_master WHERE user_id=?");

            preparedStatement.setInt(1,id);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                userAction.setUserId(resultSet.getInt("user_id"));

                userAction.setUserName(resultSet.getString("user_login_id"));

                userAction.setUserDesignation(resultSet.getInt("designation_id"));

                userAction.setUserContact(resultSet.getInt("contact_number"));

                userAction.setUserEmail(resultSet.getString("email_id"));

                userAction.setUserRole(resultSet.getInt("user_role_id"));

            }
        } catch (Exception e) {

            e.printStackTrace();

        }

        System.out.println("2");

        return userAction;

    }

    public List<List<String>> getDesignationList(){

        List<List<String>> result= new ArrayList<List<String>>();

        try{

            preparedStatement = con.connection.prepareStatement("SELECT * from youcrm.designation WHERE action = true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while(resultSet.next()){

                System.out.println("ID: " +resultSet.getInt("designation_id"));
                System.out.println("Name: " +resultSet.getString("designation_name"));

                row = new ArrayList<String>();

                int designation_id = resultSet.getInt("designation_id");

                row.add(String.valueOf(designation_id));

                row.add(resultSet.getString("designation_name"));

                row.add("<a href='#' data-value='"+ designation_id +"' id='"+ designation_id +"' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='#' id='"+ designation_id +"' data-value='"+ designation_id +"' class='delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);
            }


        }
        catch (Exception e){
            e.printStackTrace();
        }

        return result;

    }

    public boolean isDesignationDeleted(int designationId){

        System.out.println(designationId);

        try{

            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.designation SET action=false WHERE designation_id=?");

            preparedStatement.setInt(1,designationId);

            preparedStatement.executeUpdate();

            return true;

        }catch(Exception e){

            e.printStackTrace();

        }

        return false;
    }

}
