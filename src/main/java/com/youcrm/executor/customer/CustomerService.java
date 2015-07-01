package com.youcrm.executor.customer;

import com.youcrm.action.customer.CustomerAction;
import com.youcrm.dao.ConnectionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * Created by Dell 15R on 29-06-2015.
 */

public class CustomerService {


    private static ConnectionDB con=new ConnectionDB();
    private static PreparedStatement preparedStatement=null;
    private ResultSet resultSet=null;

    public boolean isStatusAdded(String status){

        try
        {
            preparedStatement=con.connection.prepareStatement("INSERT  INTO youcrm.status_master(status_type) VALUES (?)");
            preparedStatement.setString(1,status);
            preparedStatement.execute();

            return true;

        }catch (Exception e){
            e.printStackTrace();
        }

        return false;
    }

    public ArrayList<CustomerAction> getStatusListService()
    {

        ArrayList<CustomerAction> statusList = new ArrayList<CustomerAction>();
        try {


            preparedStatement=con.connection.prepareStatement("SELECT staus_id,status_name FROM youcrm.status_master");
            resultSet= preparedStatement.executeQuery();


            while (resultSet.next()) {

                System.out.println(resultSet.getInt("status_id"));
                System.out.println(resultSet.getString("status_name"));


                CustomerAction customerAction=new CustomerAction();

                customerAction.setStatusId(resultSet.getInt("status_id"));

                customerAction.setStatus(resultSet.getString("status_name"));

                statusList.add(customerAction);


            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return statusList;

    }




}
