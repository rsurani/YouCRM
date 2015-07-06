var formManager = {

	initForm:function(context){

            var form =document.getElementById(context.container.attr('id'));

/*
   // var form =document.getElementById(context.container.attr('id')).nodeName;
     //       var form =document.getElementById(context.container.attr('id'));
          // alert(form.elements);
       ///    alert(form.nodeName);
          //  alert(form.elements.length);
            //alert(context);

	if (!form || form.nodeName!== "FORM") {
            alert(form);
            return;
        }

        var i, j, q = [];
        for (i = form.elements.length - 1; i >= 0; i = i - 1) {
                alert(i)
                if (form.elements[i].name === "") {
                        continue;
                }
                switch (form.elements[i].nodeName) {
                case 'INPUT':
                        switch (form.elements[i].type) {
                        case 'text':

                                alert("textbox");

                        case 'hidden':
                        case 'password':
                                alert("password")
                        case 'button':
                        case 'reset':
                        case 'submit':
                                q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].value));
                                break;
                        case 'checkbox':
                        case 'radio':
                                if (form.elements[i].checked) {
                                        q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].value));
                                }                                               
                                break;
                        }
                        break;
                        case 'file':
                        break; 
                case 'TEXTAREA':
                        q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].value));
                        break;
                case 'SELECT':
                        switch (form.elements[i].type) {
                        case 'select-one':
                                q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].value));
                                break;
                        case 'select-multiple':
                                for (j = form.elements[i].options.length - 1; j >= 0; j = j - 1) {
                                        if (form.elements[i].options[j].selected) {
                                                q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].options[j].value));
                                        }
                                }
                                break;
                        }
                        break;
                case 'BUTTON':
                        switch (form.elements[i].type) {
                        case 'reset':
                        case 'submit':
                        case 'button':
                                q.push(form.elements[i].name + "=" + encodeURIComponent(form.elements[i].value));
                                break;
                        }
                        break;
                }
        }
        //return q.join("&");

*/
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
                                                alert(element.prop('tagName'));
                                                alert(element.attr('name'));

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