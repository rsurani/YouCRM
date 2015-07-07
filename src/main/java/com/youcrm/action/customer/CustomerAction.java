package com.youcrm.action.customer;

import com.youcrm.executor.customer.CustomerService;

import java.util.ArrayList;

/**
 * Created by Dell 15R on 27-06-2015.
 */

//hello world
    //testing 2

    //testcase
public class CustomerAction {

    private String companyName;

    private String contactPerson;

    private String contactNumber;

    private String emailId;

    private String addressLineOne;

    private String addressLineTwo;

    private String pincode;

    private String locationId;

    private int statusId;

    private String status;

    private ArrayList<CustomerAction> list=new ArrayList<CustomerAction>();

CustomerService customerService=new CustomerService();

    public ArrayList<CustomerAction> getList() {
        return list;
    }

    public void setList(ArrayList<CustomerAction> list) {
        this.list = list;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getAddressLineOne() {
        return addressLineOne;
    }

    public void setAddressLineOne(String addressLineOne) {
        this.addressLineOne = addressLineOne;
    }

    public String getAddressLineTwo() {
        return addressLineTwo;
    }

    public void setAddressLineTwo(String addressLineTwo) {
        this.addressLineTwo = addressLineTwo;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String addStatus() {

        customerService.isStatusAdded(status);

        return "success";
    }

    public String statusList(){



        return "success";
    }

}
