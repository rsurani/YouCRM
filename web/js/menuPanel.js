/**
 * Created by Dell 15R on 17-07-2015.
 */

var menuManager={

    init:function(){

        menuManager.bindClickEvent({selector:'#leftPanel'},menuManager.menuCallBack);
    },

    bindClickEvent: function (context, callback)
    {
        /*if(context.container)
        {
            $(context.container).on("click", context.selector, callback);
        }
        else
        {*/
            //$(context.selector).on("click", callback);
        //}

        $(context.selector).on("click",'nav ul li[data-panel=dashBoard] a',callback)

    },
    menuCallBack: function () {

        alert(this.id);

        if(this.id=="dashBoard"){

            $('#content').load('/dashboard.jsp');
        }

    }



}
