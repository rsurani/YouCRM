/**
 * Created by Dell 15R on 29-06-2015.
 */
var status = {

    executePOSTRequest: function (context) {

        $.ajax({

            url: context.url,

            type: "POST",

            data: context.params,

            success: function (json) {

                var callbacks;

                if (context.callback != undefined) {

                    callbacks = $.Callbacks();

                    callbacks.add(context.callback);

                    context.json = json;

                    callbacks.fire(context);

                    callbacks.remove(context.callback);

                }

            },

            dataType: "json"

        });


    },

    bindClickEvent: function (context, callback)
    {

        $(context.selector).on("click", callback);

    },

    init: function () {

        status.bindClickEvent({selector:'#submitStatus'},status.addDesignation)


    },

    addDesignation:function(){

        status.executePOSTRequest({
            url: 'addStatus',
            params: $("#statusForm").serialize(),
            callback: status.initCallback

        })

    },

    getStatusList:function()
    {
        $.getJSON('StatusList',function(jsonStatusListResponse)
        {

            $("#StatusTable").find("tr:gt(0)").remove();

            var designationTable = $("#StatusTable");

            $.each(jsonStatusListResponse.statusList, function(key,value)
            {

                var rowNew = $("<tr><td></td><td></td></tr>");


                rowNew.children().eq(0).text(value["userDesignation"]);

                rowNew.children().eq(1).text(value["designation"]);

                rowNew.appendTo(designationTable)

            });
        })

        $("#DesignationTable").dataTable();
    } ,

    initCallback: function (callbackContext) {
        //status.getDesignationList();
        alert("Record Added successfully");
    }
}


