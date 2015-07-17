

var loginManager = {

    init: function () {

        //alert("yed");
        global.bindClickEvent({selector:'#loginAction'},loginManager.login)
        global.bindClickEvent({selector:'#logout'},loginManager.logout)



    },

    login:function(){

        global.executePOSTRequest({
            url: 'login',
            params: $("#loginForm").serialize(),
            callback: loginManager.initCallback
        })
    },

    logout:function(){

        global.executePOSTRequest({
            url: 'logOut',
            params: $("#logoutForm").serialize(),
            callback: loginManager.logoutCallback
        })

    },
    initCallback: function (callbackContext) {

       // alert("UserName: "+callbackContext.json.userName)
        //
        //$('#loginName').text(callbackContext.json.userName)

        if (callbackContext.json.message == '1') {

            $("#loginName").text(callbackContext.json.userName);

            $("#content").load('/dashboard.jsp');
        }

        if (callbackContext.json.message == '0') {
        }

    },

    logoutCallback: function (callbackContext) {

        if (callbackContext.json.message == 1) {

            location.href = "index.jsp";
        }
        else {

            alert("wrong")
        }
    }

}


