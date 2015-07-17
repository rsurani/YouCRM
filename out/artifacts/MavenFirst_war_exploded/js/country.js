/**
 * Created by Mausam on 7/10/2015.
 */

var countryManager = {

    init: function () {


        global.bindClickEvent({selector:'#submitCountry'},countryManager.addCountry);
    },

    addCountry:function(){

        formManager.initForm({
            url: 'addCountry',
            container:$("#countryForm"),
            callback: countryManager.initCallback
        })

    },


    initCallback: function (callbackContext) {
        location.href="country.jsp";
    },

    fetchCountry:function(){

        global.executePOSTRequest({
            url : 'fetchCountry',
            callback: countryManager.fetchRecord
        })
    },

    fetchRecord:function(callbackContext) {


        $("#countryTable").DataTable({
            "data": callbackContext.json.result,

            "columns": [
                { "title": "Country Id" },
                { "title": "Country" },
                { "title": "Action"}
            ]
        })

       global.bindClickEvent({container:"#countryTable",selector:'.delete'},countryManager.delete);
    },

    delete: function(){

        var countryId=this.id;
        global.executePOSTRequest({
            url: 'delCountry',
            params: {locationId:this.id},
            callback: countryManager.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="country.jsp";
    }

}


