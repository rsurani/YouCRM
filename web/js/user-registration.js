/**
 * Created by Mayank on 6/27/2015.
 */

var UserEntry= {


    init: function ()
    {

        alert("init");
        global.bindClickEvent({selector:'#addUser'},UserEntry.add)
        global.bindClickEvent({selector:'#userDetail'},UserEntry.getDetail)
        // global.bindClickEvent({selector:'#delete'},global.delete)
    },

    add:function () {

        global.executePOSTRequest({
            url: 'addUser',
            params: $("#userRegistration").serialize(),
            callback: UserEntry.initCallback
        })
    },


    getDetail:function(backContext)
    {

        alert("getDetail");

        $('#UserTable').DataTable(
            {

                "data": backContext.json.result,

                "columns": [
                    { "title": "User Id" },
                    { "title": "Role" },
                    { "title": "User Name" },
                    { "title": "Designation" },
                    { "title": "Contact"},
                    { "title": "Email"},
                    { "title": "Actions"}
                ]
            });



        /*
         $("#UserTable").find("tr:gt(0)").remove();

         var userDetailTable = $("#UserTable");
         var i=0;
         $.each(backContext.json.userList, function(key,value)
         {

         var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");


         rowNew.children().eq(0).text(value["userId"]);

         rowNew.children().eq(1).text(value["userRole"]);

         rowNew.children().eq(2).text(value["userName"]);

         rowNew.children().eq(3).text(value["userDesignation"]);

         rowNew.children().eq(4).text(value["userContact"]);

         rowNew.children().eq(5).text(value["userEmail"]);

         // rowNew.children().eq(6).append('<a href="#"><span class="glyphicon glyphicon-pencil"></span></a> &nbsp; <a href="#" class="rem"><span class="glyphicon glyphicon-remove"></span></a>');
         //rowNew.children().eq(6).append(' <a href="product_edit.html?lang=en" class="btn-action glyphicons pencil btn-success"><i></i></a> <a href="#" data-val=value.userID id="delete"  class="btn-action glyphicons remove_2 btn-danger"><i></i></a>');

         rowNew.children().eq(6).append('<button class="delete" data-value= "'+value.userId+'" >Delete</button>');

         rowNew.appendTo(userDetailTable)

         });



         $("#UserInfoDateWise").dataTable();

         global.bindClickEvent({selector:'.delete'},global.delete)*/
    } ,


    getDesignationDropDown:function(callContext)
    {
        //  alert("Inside Json")
        $.each(callContext.json.designationList, function(key,value)
        {
            $('#designation').append($('<option/>').attr("value", value["userDesignation"]).text(value["designation"]));
        });

    } ,


    fetchRecord: function () {

        alert("SelectBox  Fetch")
        global.executePOSTRequest({
            url: 'DesignationList',
            callback: UserEntry.getDesignationDropDown

        })

    },

    fetchUserRecord: function () {

        alert("User Fetch");
        global.executePOSTRequest({
            url: 'UserList',
            // params: $("#userRegistration").serialize(),
            callback: UserEntry.getDetail
        })

    },

    initCallback: function (callbackContext) {

        $('#userRegistration').find('input:not(#addUser)').val('');
        UserEntry.fetchUserRecord();
    }
}



