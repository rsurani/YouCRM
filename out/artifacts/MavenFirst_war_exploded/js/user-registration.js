/**
 * Created by Mayank on 6/27/2015.
 */

var UserEntry= {

    init: function ()
    {
        alert("Hello")
        alert("ID: " + this.id)
        global.bindClickEvent({container:"#userRegistration",selector:'#addUser'},UserEntry.add)
        global.bindClickEvent({selector:'#userDetail'},UserEntry.getDetail)
        // global.bindClickEvent({selector:'#delete'},global.delete)
    },




        add:function () {


          /* global.executePOSTRequest({
                url: 'addUser',
                params: $("#userRegistration").serialize(),
                callback: UserEntry.initCallback
            })*/


            formManager.initForm({
                url: 'addUsers',
                container:$("#userRegistration"),
                callback: UserEntry.initCallback
            //  self: reportManager,
            //params: {reportId: context.entityId},
            })
        },


    getDetail:function(backContext)
    {
        alert(backContext.json.result);
        $('#UserTable').DataTable(
            {
                destroy:true,
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

        global.bindClickEvent({container:"#UserTable" ,selector:'.delete'},UserEntry.delete)
        global.bindClickEvent({container:"#UserTable",selector:'.update'},UserEntry.updateFetch)
        global.bindClickEvent({container:"#UserTable",selector:'#updateUser'},UserEntry.update)
    } ,


    getDesignationDropDown:function(callContext)
    {

        $.each(callContext.json.designationList, function(key,value)
        {
            $('#designation').append($('<option/>').attr("value", value["userDesignation"]).text(value["designation"]));
        });

    } ,


    fetchRecord: function () {


        global.executePOSTRequest({
            url: 'DesignationList',
            callback: UserEntry.getDesignationDropDown

        })

    },

    fetchUserRecord: function () {

        alert("fetch")

        global.executePOSTRequest({
            url: 'UserList',
            // params: $("#userRegistration").serialize(),
            callback: UserEntry.getDetail

        })

    },

    initCallback: function (callbackContext) {
        alert("addd")
        $('#userRegistration').find('input:not(#addUser)').val('');
        location.href="user_registration.jsp";
    },

    delete: function(){

        var userId=this.id;
        global.executePOSTRequest({
            url: 'deleteUser',
            params: {userId:this.id},
            callback: UserEntry.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="user_registration.jsp";
    },

    updateFetch: function(){

        global.executePOSTRequest({
            url: 'updateUser',
            params: {userId:this.id},
            callback: UserEntry.updateFetchCallback
        })

    },

    updateFetchCallback: function(callContext) {
        //alert(callContext.json.result)


        var value=callContext.json.result;

        $('#userId').val(value.userId);
        $('#loginId').val(value.userName);
        $('#phone').val(value.userContact);
        $('#email').val(value.userEmail);
        //alert(value.userDesignation)
        $('#designation').val(value.userDesignation).attr('selected', true);


        $('#updateUser').css({"display":"block"});
        $('#addUser').css({"display":"none"});
        $('#userIdControl').css({"display":"block"});


    },

    update:function(){

        $('#userId').removeAttr('disabled',false);

/*
        global.executePOSTRequest({
            url: 'update',
            params: $('#userRegistration').serialize(),
            callback: UserEntry.updateCallback
        })
*/


        formManager.initForm({
            url: 'update',
            container:$("#userRegistration"),
            callback: UserEntry.updateCallback
            //  self: reportManager,
            //params: {reportId: context.entityId},
        })


    },

    updateCallback:function(){

        $('#userRegistration').find('input:not(#addUser)').val('');

        $('#updateUser').css({"display":"none"});
        $('#addUser').css({"display":"block"});
        $('#userIdControl').css({"display":"none"});
        location.href="user_registration.jsp";
       // UserEntry.getDetail;

    }
}




