/**
 * Created by VASANI Grp on 7/14/2015.
 */



var cityManager = {

    init: function () {
        global.bindClickEvent({selector:'#submitCity'},cityManager.addCity);
    },

    addCity:function(){

        formManager.initForm({
            url: 'addCity',
            container:$("#cityForm"),
            callback: cityManager.initCallback
        })

    },


    initCallback: function (callbackContext) {
        location.href="city.jsp";
    },

    //City record in datatable
    fetchCity:function(){
        global.executePOSTRequest({
            url : 'fetchCity',
            callback:cityManager.fetchCityRecord
        })
    },

    fetchCityRecord:function(callbackContext) {
        $("#cityTable").DataTable({

            "data": callbackContext.json.result,

            "columns": [
                { "title": "City Id" },
                { "title": "City" },
                { "title": "State" },
                { "title": "Country" },
                { "title": "Action"}
            ]
        })

        global.bindClickEvent({container:"#cityTable",selector:'.delete'},cityManager.delete);
    },

    //To delete the city from city grid.
    delete: function(){
        var cityId=this.id;
        global.executePOSTRequest({
            url: 'delCity',
            params: {locationId:this.id},
            callback: cityManager.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="city.jsp";
    },


    //To get all countries in dropdown of add city.
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
            callback: cityManager.getCountryDropDown
        })
    },

    //To get all states of country selected in dropdown of add city.
    getStateDropDown : function(callContext)
    {
        $.each(callContext.json.result, function(key,value)
        {
            $('#state').append($('<option/>').attr("value", value["locationId"]).text(value["location"]));
        });
    },

    fetchStateRecord: function()
    {
        global.executePOSTRequest({
            url : 'StateList',
            callback: cityManager.getStateDropDown
        })
    },

    //To get id of location(country) to specify its states.
    fetchCountryId: function()
    {
        $('#state').empty();

        var location_id=$('#country').val();

        global.executePOSTRequest({
            url:'stateDropDown',
            params:{locationId:location_id},
            callback: cityManager.getStateDropDown

        })


    }

}



