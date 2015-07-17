package com.youcrm.action.customer;

import com.youcrm.executor.customer.CustomerService;

import java.util.ArrayList;

/**
 * Created by Mausam on 7/8/2015.
 */


public class CustomerAction {

    private Object result;

    CustomerService customerService = new CustomerService();

    private int statusId;
    private String statusType;

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusType() {
        return statusType;
    }

    public void setStatusType(String statusType) {
        this.statusType = statusType;
    }

    public String addStatus()
    {
        if(customerService.isStatusInserted(statusType))
        {
            return "success";
        }
        return "error";
    }

    public String getStatus()
    {

        result = customerService.getStatusListService();
        return "success";
    }

    public String deleteStatus()
    {
        if(customerService.isStatusDeleted(statusId))
        {
            return "success";
        }
        return "error";
    }
}
