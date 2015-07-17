/**
 * Created by Mausam on 7/10/2015.
 */


var stateManager = {

    init: function () {
        global.bindClickEvent({selector:'#submitState'},stateManager.addState);
    },

    addState:function(){

        formManager.initForm({
            url: 'addState',
            container:$("#stateForm"),
            callback: stateManager.initCallback
        })

    },


    initCallback: function (callbackContext) {
        location.href="state.jsp";
    },


    fetchState:function(){
        global.executePOSTRequest({
            url : 'fetchState',
            callback: stateManager.fetchStateRecord
        })
    },



    fetchStateRecord:function(callbackContext) {

        console.log(callbackContext.json.result);

        $("#stateTable").DataTable({

            "data": callbackContext.json.result,

            "columns": [
                { "title": "State Id" },
                { "title": "State" },
                { "title": "Country" },
                { "title": "Action"}
            ]
        })

         global.bindClickEvent({container:"#stateTable",selector:'.delete'},stateManager.delete);
    },



    delete: function(){

        var stateId=this.id;
        global.executePOSTRequest({
            url: 'delState',
            params: {locationId:this.id},
            callback: stateManager.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="state.jsp";
    },




    getCountryDropDown : function(callContext)
    {
        $.each(callContext.json.result, function(key,value)
        {
            $('#country').append($('<option/>').attr("value", value["locationId"]).text(value["location"]));
        });
    },

    fetchRecord: function()
    {
        global.executePOSTRequest({
            url : 'CountryList',
            callback: stateManager.getCountryDropDown
        })
    }


}



