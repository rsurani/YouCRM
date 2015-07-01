var loginManager = {

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


        loginManager.bindClickEvent({selector:'#loginAction'},loginManager.login)


    },

    login:function(){

        loginManager.executePOSTRequest({
            url: 'login',
            params: $("#loginForm").serialize(),
            callback: loginManager.initCallback

        })

    },
    initCallback: function (callbackContext) {

        if (callbackContext.json.message == 1) {

            location.href = "dashboard.jsp";
        }
        else {

            alert("wrong")
        }

    }
}


