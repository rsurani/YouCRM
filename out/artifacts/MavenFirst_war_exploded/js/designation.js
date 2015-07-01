/**
 * Created by Dell 15R on 29-06-2015.
 */
var designation = {


    init: function () {



        global.bindClickEvent({selector:'#submitDesignation'},designation.addDesignation)


    },

    addDesignation:function(){

        global.executePOSTRequest({
            url: 'addDesignation',
            params: $("#designationForm").serialize(),
            callback: designation.initCallback

        })

    },


    initCallback: function (callbackContext) {

        global.executePOSTRequest({
        url: 'DesignationList',
        callback: designation.getDesignationList

        })

    },

    getDesignationList:function(callbackContext){

        alert("Lo mein aa gaya")

        $("#DesignationTable").find("tr:gt(0)").remove();

        var designationTable = $("#DesignationTable");

        $.each(callbackContext.json.designationList, function(key,value)
        {

            var rowNew = $("<tr><td></td><td></td></tr>");


            rowNew.children().eq(0).text(value["userDesignation"]);

            rowNew.children().eq(1).text(value["designation"]);

            rowNew.appendTo(designationTable)


        });
}

}
