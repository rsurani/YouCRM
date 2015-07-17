/**
 * Created by Dell 15R on 06-07-2015.
 */

var formRender = {

    init: function () {


        global.bindClickEvent({selector:'#dashBoard'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#viewLead'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#addLead'},formManager.renderHtml);
        global.bindClickEvent({selector:'#calender'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#reports'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#charts'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#designation'},formManager.renderHtml);
        //global.bindClickEvent({selector:'#userDesignation'},formManager.renderHtml);




    },

    renderHtml:function(){

        alert(this.id);

        if(this.id=="dashBoard")
            $('#content').load('/dashboard.jsp');
        //else if(this.id=="viewLead")
        //    $("#content").load('/.jsp');
        //else if(this.id=="addLead")
        //    $("#content").load('/login.jsp');
        //else if(this.id=="meetings")
        //    $("#content").load('/login.jsp');
        else if(this.id=="calender")
            $('#content').load('/calender.jsp');
        //else if(this.id=="reports")
        //    $("#content").load('/login.jsp');
        //else if(this.id=="charts")
        //    $("#content").load('/login.jsp');
        //else if(this.id=="designation")
        //    $("#content").load('/login.jsp');
        //else if(this.id=="userDesignation")
        //    $("#content").load('/login.jsp');
        else
            $("#content").load('/login.jsp');

    },

    cal:function(){
        alert("calendar")

        $("#content").load('/calendar.jsp');


    }


}