<div id="menu" class="hidden-phone">
    <div id="leftPanel">

        <nav id="menuPanel">
        <ul>
            <li class="glyphicons home active">
                <a id="dashBoard" href="javascript:void(0);"><i></i><span>Dashboard</span></a>
            </li>

            <li class="hasSubmenu">
                <a data-toggle="collapse" class="glyphicons old_man" href="#down"><i></i><span>Leads</span></a>
                <ul class="collapse" id="down">
                    <li class="" ><a id="viewLead" href="javascript:void(0);"><span>View Leads</span></a></li>
                    <li class=""><a   id="addLead" href="javascript:void(0);"><span>Add Lead</span></a></li>

                </ul>
            </li>

            <li class="glyphicons group"><a id="meetings" href="javascript:void(0);"><i></i><span>Meetings</span></a></li>
            <li class="glyphicons calendar"><%--<a id="calender" href="javascript:void(0);" title="calender"><i></i><span>Calendar</span></a>--%>
                <a id="calender" href="javascript:void(0);"><i></i><span>Calender</span></a>
            </li>
            <li class="glyphicons notes_2"><a id="reports" href="javascript:void(0);"><i></i><span>Reports</span></a></li>
            <li class="glyphicons charts"><a id="charts" href="javascript:void(0);"><i></i><span>Charts</span></a></li>

        </ul>
        <ul>
            <li class="heading"><span>Entry</span></li>
            <li class="glyphicons coins"><a id="designation" href="javascript:void(0);"><i></i><span>Designation</span></a></li>
            <li class="glyphicons coins"><a id="userDesignation" href="javascript:void(0);"><i></i><span>User Rgistration</span></a></li>
        </ul>
        </nav>
    </div>
</div>

<%--<script src="js/menuPanel.js"></script>--%>
<script>
    $(document).ready(function(){
        formRender.init();

    })


</script>