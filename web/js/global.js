/**
 * Created by Dell 15R on 30-06-2015.
 */


var global={


    executePOSTRequest: function (context) {



        $.ajax({


            url: context.url,

            type: "POST",

            data: context.params,

            processData: context.process,

            contentType: context.content,

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
        alert("Container"+context.container);
        alert("Selector"+context.selector);
        //context.selector ("by kapil sir")
        if(context.selector)
        {
            $(context.container).on("click", context.selector, callback);
        }
        else
        {
            alert("Its sad that i dont have any selector");
            $(context.container).on("click", callback);
        }

    }
}
