/**
 * Created by Dell 15R on 29-06-2015.
 */
var designation = {


    init: function ()
    {


        global.bindClickEvent({selector: '#submitDesignation'}, designation.addDesignation)


    },

    addDesignation: function ()
    {

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

    getDesignationList: function (callbackContext)
    {


        $("#DesignationTable").DataTable(
            {
                //destroy: "true",
                //processing: "true",
                //bpaging: "false",
                "data": callbackContext.json.result,

                "columns": [
                    {"title": "Designation Id"},
                    {"title": "Designation"},
                    {"title": "Actions"}
                ]
            });

        global.bindClickEvent({container:"#DesignationTable" ,selector: '.delete'}, designation.delete)

        global.bindClickEvent({selector: '.update'}, designation.updateFetch)

        global.bindClickEvent({selector: '#updateDesignation'}, designation.update)

    },

    delete: function ()
    {
alert("aaaaaa")
        var designationId = this.id;

        global.executePOSTRequest({

            url: 'deleteDesignation',

            params: {designationId: designationId}
            // callback: designation.deleteCallback
        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href = "designation.jsp";
    }


}
