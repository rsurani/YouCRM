/**
 * Created by Mausam on 7/8/2015.
 */

var statusManager = {

    init: function () {


        global.bindClickEvent({container:'#statusForm',selector:'#submitStatus'},statusManager.addStatus);
    },

    addStatus:function(){
        formManager.initForm({
            url: 'addStatus',
            container:$("#statusForm"),
            callback: statusManager.initCallback
        })

    },


    initCallback: function (callbackContext) {
        location.href="status.jsp";
    },

    fetchStatus:function(){

        global.executePOSTRequest({
            url : 'fetchStatus',
            callback: statusManager.fetchRecord
        })
    },

    fetchRecord:function(callbackContext) {

        $("#statusTable").DataTable({
            "data": callbackContext.json.result,

            "columns": [
                { "title": "Status Id" },
                { "title": "Status Type" },
                { "title": "Action"}
            ]
        })

        global.bindClickEvent({container:"#statusTable",selector:'.delete'},statusManager.delete);
    },

    delete: function(){
        var statusId=this.id;
        global.executePOSTRequest({
            url: 'delStatus',
            params: {statusId:this.id},
            callback: statusManager.deleteCallback

        })

    },

    deleteCallback: function (deleteContextCallback) {
        location.href="status.jsp";
    }

}


