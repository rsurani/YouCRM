package com.youcrm.action.user;

import com.opensymphony.xwork2.ActionSupport;
import com.youcrm.executor.user.UserService;

import java.util.ArrayList;

/**
 * Created by Mayank on 6/22/2015.
 */
public class UserAction extends ActionSupport{

    private int userId;
    private int userRole;
    private String userName;
    private String userPassword;
    private int userDesignation;
    private String designation;
    private int userContact;
    private String userEmail;
    private int message;

    private Object result;

    private ArrayList<UserAction> userList=new ArrayList<UserAction>();

    private ArrayList<UserAction> designationList=new ArrayList<UserAction>();


    public ArrayList<UserAction> getUserList() {
        return userList;
    }

    public ArrayList<UserAction> getDesignationList() {
        return designationList;
    }

    public void setDesignationList(ArrayList<UserAction> designationList) {
        this.designationList = designationList;
    }

    public void setUserList(ArrayList<UserAction> userList) {
        this.userList = userList;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserRole() {
        return userRole;
    }

    public void setUserRole(int userRole) {
        this.userRole = userRole;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserDesignation() {
        return userDesignation;
    }

    public void setUserDesignation(int userDesignation) {
        this.userDesignation = userDesignation;
    }

    public int getUserContact() {
        return userContact;
    }

    public void setUserContact(int userContact) {
        this.userContact = userContact;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public int getMessage() {
        return message;
    }

    public void setMessage(int message) {
        this.message = message;
    }

    UserService userService=new UserService();


    public String UserLoginValidation()
    {
        System.out.println("UserAction");
        System.out.println("UserName: " + userName);
        System.out.println("Password: " + userPassword);


        if(userService.CheckUserNameandPassword(userName,userPassword)==true)
        {
            System.out.println("Success");
            message=1;
            System.out.println("Message: " +message);
            return "success";
        }
        else {
            System.out.println("Fail");
            message=0;
            System.out.println("Message: " +message);
            return "success";
        }
    }

    public String addUser(){

        System.out.println("Inside AddUser");

        if(userService.insertUser(userRole,userName,userPassword,userDesignation,userContact,userEmail)==true){

            System.out.println("Success");
            return "success";
        }
        else {
            System.out.println("Error");
            return "success";
        }

    }

    public String userDetailList()
    {
        result = userService.getUserListService();

        return "success";
    }

    public String addDesignation(){

        userService.isDesignationAdded(designation);
        return "success";
    }

    public String designationList()
    {
        System.out.println("DesigntionList");
        designationList=userService.getDesignationListService();

        return "success";
    }

    public String execute() {

        System.out.println("Success");

        return "success";

    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
