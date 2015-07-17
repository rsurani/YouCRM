package com.youcrm.executor.location;

import com.youcrm.action.location.LocationAction;
import com.youcrm.dao.ConnectionDB;
import org.eclipse.jdt.internal.core.SourceType;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class LocationService {

    private static ConnectionDB con=new ConnectionDB();
    private static PreparedStatement preparedStatement=null;

    //COUNTRY
    //Check whether the country is inserted or not.
    public static boolean isCountryInserted(String country)
    {
        try
        {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.location_master(location,hierarchy,parent_id,action) VALUES (?,3,-1,true)");
            preparedStatement.setString(1,country);
            preparedStatement.execute();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    //select countries to show in datatable
    public static List<List<String>> getCountryListService()
    {
        ResultSet resultSet;
        List<List<String>> result = new ArrayList<List<String>>();

        try {

            preparedStatement = con.connection.prepareStatement("SELECT * FROM youcrm.location_master WHERE hierarchy = 3 AND action = true");

            resultSet = preparedStatement.executeQuery();

            List<String> row;

            while (resultSet.next()) {
                //i++;
                row = new ArrayList<String>();

                int locationId = resultSet.getInt("location_id");

                row.add(String.valueOf(locationId));

                row.add(resultSet.getString("location"));

                row.add("<a href='' value='country' data-value='" + locationId + "' id='" + locationId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='' id='" + locationId + "' value='country' data-value='" + locationId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    //STATE
    //Check whether the state is inserted or not.
    public static boolean isStateInserted(String state, int locationId)
    {
        try
        {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.location_master(location,hierarchy,parent_id,action) VALUES (?,2,?,true)");
            preparedStatement.setString(1,state);
            preparedStatement.setInt(2, locationId);
            preparedStatement.execute();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    //Add all countries in dropdown in state_master
    public static ArrayList<LocationAction> getCountryListDropDown()
    {
        ArrayList<LocationAction> countryList = new ArrayList<LocationAction>();
         ResultSet resultSet;

        try {

            preparedStatement = con.connection.prepareStatement("SELECT location_id,location FROM youcrm.location_master WHERE hierarchy = 3");

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                LocationAction locationAction = new LocationAction();

                locationAction.setLocationId(resultSet.getInt("location_id"));

                locationAction.setLocation(resultSet.getString("location"));

                countryList.add(locationAction);


            }

        } catch (Exception e) {

            e.printStackTrace();

        }
        return countryList;


    }

    //Select states and its country to show in datatable
    public static List<List<String>> loadStateGrid()
    {
        List<List<String>> result = new ArrayList<List<String>>();
        ResultSet resultSet;

        try {

           // preparedStatement = con.connection.prepareStatement("SELECT State.location_id, State.location, Country.location FROM youcrm.location_master State ,youcrm.location_master Country WHERE State.parent_id = Country.location_id");

            preparedStatement = con.connection.prepareStatement("SELECT State.location_id, State.location state, State.parent_id, Country.location country  FROM youcrm.location_master State LEFT JOIN youcrm.location_master Country ON State.parent_id = Country.location_id WHERE State.hierarchy = 2 AND State.action = true");
            resultSet = preparedStatement.executeQuery();


            while (resultSet.next()) {

                List<String> row = new ArrayList<String>();

                int locationId = resultSet.getInt("location_id");

                row.add(String.valueOf(locationId));

                row.add(resultSet.getString("state"));

                row.add(resultSet.getString("country"));


                row.add("<a href='' value='State' data-value='" + locationId + "' id='" + locationId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='' id='" + locationId + "' value='state' data-value='" + locationId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");

                result.add(row);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }


    //CITY
    //Check whether the city is inserted or not.
    public static boolean isCityInserted(String city, int locationId)
    {
        try
        {
            preparedStatement = con.connection.prepareStatement("INSERT INTO youcrm.location_master(location,hierarchy,parent_id,action) VALUES (?,1,?,true)");
            preparedStatement.setString(1,city);
            preparedStatement.setInt(2, locationId);
            preparedStatement.execute();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    //Add all states according to selected country in dropdown in city_master
    public static ArrayList<LocationAction> getStateListDropDown(int locationId)
    {
        ArrayList<LocationAction> countryList = new ArrayList<LocationAction>();
        ResultSet resultSet;

        try {

            preparedStatement = con.connection.prepareStatement("SELECT location_id,location FROM youcrm.location_master WHERE parent_id = ? AND action=true");
            preparedStatement.setInt(1,locationId);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                LocationAction locationAction = new LocationAction();

                locationAction.setLocationId(resultSet.getInt("location_id"));

                locationAction.setLocation(resultSet.getString("location"));

                countryList.add(locationAction);


            }

        } catch (Exception e) {

            e.printStackTrace();

        }
        return countryList;

    }

    //Select cities, states and countries to show in datatable
    public static List<List<String>> loadCityGrid()
    {
        List<List<String>> result = new ArrayList<List<String>>();
        ResultSet resultSet;

        try {

            // preparedStatement = con.connection.prepareStatement("SELECT State.location_id, State.location, Country.location FROM youcrm.location_master State ,youcrm.location_master Country WHERE State.parent_id = Country.location_id");

           // preparedStatement = con.connection.prepareStatement("select State.location_id, State.location state, State.parent_id, Country.location country  from youcrm.location_master State left join youcrm.location_master Country on State.parent_id = Country.location_id where State.parent_id <> -1");
           // preparedStatement = con.connection.prepareStatement("select City.location_id, City.location city, City.parent_id, State.location state  from youcrm.location_master City left join youcrm.location_master State on City.parent_id = State.location_id where City.hierarchy = 1 and City.action=true ");

           // preparedStatement = con.connection.prepareStatement("select City.location_id, City.location city, City.parent_id, State.location state, (select Country.location country from youcrm.location_master Country where Country.location_id = State.parent_id)  from youcrm.location_master City left join youcrm.location_master State on City.parent_id = State.location_id where City.hierarchy = 1 ");
            preparedStatement = con.connection.prepareStatement("SELECT city.location_id, city.location city, state.location state, country.location country FROM youcrm.location_master city LEFT JOIN  youcrm.location_master state ON city.parent_id = state.location_id LEFT JOIN  youcrm.location_master country ON state.parent_id = country.location_id WHERE city.hierarchy = 1 AND city.action = true");
            resultSet = preparedStatement.executeQuery();


            while (resultSet.next()) {

                List<String> row = new ArrayList<String>();

                int locationId = resultSet.getInt("location_id");

                row.add(String.valueOf(locationId));
                row.add(resultSet.getString("city"));
                row.add(resultSet.getString("state"));
                row.add(resultSet.getString("country"));
                row.add("<a href='' value='State' data-value='" + locationId + "' id='" + locationId + "' class='update btn-action glyphicons pencil btn-success'><i></i></a> &nbsp; <a href='' id='" + locationId + "' value='state' data-value='" + locationId + "' class=' delete btn-action glyphicons remove_2 btn-danger'><i></i></a>");


                System.out.println("data table location id ->" + String.valueOf(locationId));
                System.out.println("data table city ->"+resultSet.getString("city"));
                System.out.println("data table state ->"+resultSet.getString("state"));
                System.out.println("data table country ->"+resultSet.getString("country"));

                result.add(row);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    //Method for deleting city from datatable grid.
    public static boolean isCityDeleted(int locationId)
    {
        try
        {
            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.location_master SET action=false WHERE location_id = ? ");
            preparedStatement.setInt(1, locationId);
            preparedStatement.executeUpdate();
            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    //Method for deleting state from datatable grid.
    public static boolean isStateDeleted(int locationId)
    {
        try
        {
            preparedStatement=con.connection.prepareStatement("UPDATE youcrm.location_master SET action=false WHERE location_id = ? OR parent_id = ?");
            preparedStatement.setInt(1, locationId);
            preparedStatement.setInt(2, locationId);
            preparedStatement.executeUpdate();

            return true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    //Method for deleting country from datatable grid.
    public static boolean isCountryDeleted(int locationId)
    {
        try
        {
            preparedStatement = con.connection.prepareStatement("update youcrm.location_master set action = false where parent_id = (select location_id from youcrm.location_master where parent_id = ?) or parent_id = ? or location_id = ?");
            preparedStatement.setInt(1, locationId);
            preparedStatement.setInt(2, locationId);
            preparedStatement.setInt(3, locationId);
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
