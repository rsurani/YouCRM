var formManager = {

	initForm:function(context){

            var form =document.getElementById(context.container.attr('id'));

            context.params=context.params==undefined ? this.serializeForm(context.container): $.extend(context.params,this.serializeForm(context.container));

            //context.container=form.serialize();

            global.executePOSTRequest(context);

	},

        serializeForm: function (context) {
                var elements, elementSize, element;

                var params = {};

                elements = context.find('input[type=text],textarea,input[type=password],select,input[type=email]');


                if (elements != undefined && elements.length > 0) {

                        elementSize = elements.length;

                        for (var elementIndex = 0; elementIndex < elementSize; elementIndex++) {
                                element = $(elements[elementIndex]);
                                if (!element.prop('disabled') && element.attr('name')) {
                                        if (element.attr('name')) {


                                                params[element.attr('name')] = this.getElementValue(element);
                                        }
                                }
                        }
                }


                return params;
        },

        getElementValue: function (element)
        {
                return element.val();
        }


}