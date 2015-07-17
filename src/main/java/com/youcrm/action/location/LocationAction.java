package com.youcrm.action.location;

import com.youcrm.executor.location.LocationService;

import java.util.ArrayList;



public class LocationAction {

    private int locationId;
    private String location;
    private  Object result;


    public int getLocationId() {
        return locationId;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;

    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    //COUNTRY
    //Add country
    public String insertCountry()
    {
        if(LocationService.isCountryInserted(location))
        {
            return "success";
        }
        return "error";
    }

    //View country in datatable
    public String loadCountry()
    {
        result = LocationService.getCountryListService();
        return "success";
    }

    //Delete city.
    public String deleteCountry()
    {
        if(LocationService.isCountryDeleted(locationId))
        {
            return "success";
        }
        return "error";
    }

    //STATE
    //Add state
    public String insertState()
    {
        if(LocationService.isStateInserted(location, locationId))
        {
            return "success";
        }
        return "error";
    }

    //Add country list in drop down in add state
    public String countryList()
    {
        result=LocationService.getCountryListDropDown();
        return "success";
    }

    //View state in datatable
    public String loadStateGrid()
    {
        result = LocationService.loadStateGrid();
        return "success";
    }

    //Delete state.
    public String deleteState()
    {
        if(LocationService.isStateDeleted(locationId))
        {
            return "success";
        }
        return "error";
    }

    //CITY
    //Add city
    public String insertCity()
    {
        if(LocationService.isCityInserted(location, locationId))
        {
            return "success";
        }
        return "error";
    }

    //Add state list in drop down in add city
    public String stateList()
    {
        result = LocationService.getStateListDropDown(locationId);
        return "success";
    }

    //View city in datatable
    public String loadCityGrid()
    {
        result = LocationService.loadCityGrid();
        return "success";
    }

    //Delete city.
    public String deleteCity()
    {
        if(LocationService.isCityDeleted(locationId))
        {
            return "success";
        }
        return "error";
    }

}
