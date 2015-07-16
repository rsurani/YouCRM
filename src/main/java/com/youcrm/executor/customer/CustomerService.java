package com.youcrm.executor.customer;

import com.youcrm.action.customer.CustomerAction;
import com.youcrm.dao.ConnectionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mausam on 7/8/2015.
 */

public class CustomerService {


    private static ConnectionDB con=new ConnectionDB();
    private static PreparedStatement preparedStatement=null;
    private ResultSet resultSet=null;

    public boolean isStatusInserted(String statusType)
    {

        try
        {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.status_master(status_type,action) values(?,true)");
            preparedStatement.setString(1,statusType);
            preparedStatement.execute();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    public List<List<String>> getStatusListService()
    {

        List<List<String>> result = new ArrayList<List<String>>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.status_master WHERE action = true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {
                //i++;
                row = new ArrayList<String>();

                int statusId = resultSet.getInt("status_id");

                row.add(String.valueOf(statusId));

                row.add(resultSet.getString("status_type"));

                row.add("<a href='' data-value='" + statusId + "' id='" + statusId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='' id='" + statusId + "' data-value='" + statusId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    public boolean isStatusDeleted(int statusId)
    {
        try
        {
            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.status_master SET action=false WHERE status_id = ? ");
            preparedStatement.setInt(1, statusId);
            preparedStatement.executeUpdate();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }


}
