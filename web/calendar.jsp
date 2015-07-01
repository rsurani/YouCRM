<!DOCTYPE html>
<%@include file="lnc/head.jsp" %>
<body>
<!-- Start Content -->
<div class="container-fluid">
    <%@include file="lnc/header.jsp" %>
    <div id="wrapper">
        <%@include file="lnc/left.jsp" %>

        <div id="content">

            <div class="separator"></div>

            <h3 class="glyphicons display"><i></i> Calendar</h3>

            <div class="separator"></div>
            <div class="innerLR">
                <div class="well">
                    <div class="row-fluid">
                        <div class="span3">
                            <br/>
                            <div class="" id="external-events">
                                <h4 class="glyphicons calendar"><i></i> Meeting Events</h4>
                                <hr class="separator"/>
                                <ul>
                                    <li class="glyphicons move"><i></i> Upcoming</li>
                                    <li class="glyphicons move"><i></i> Close</li>
                                    <li class="glyphicons move"><i></i> Running</li>
                                </ul>
                                <hr class="separator"/>
                                <label for="drop-remove" class="checkbox">
                                    <input type="checkbox" class="checkbox" id="drop-remove"/>
                                    remove after drop
                                </label>
                            </div>
                        </div>
                        <div class="span9">
                            <div class="">
                                <div id="calendar"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <br/>
            <!-- End Content -->
        </div>
        <!-- End Wrapper -->
    </div>

    <!-- Sticky Footer -->
</div>

<script type="text/javascript">

    $(document).ready(function () {

        /* initialize the external events
         -----------------------------------------------------------------*/

        $('#external-events ul li').each(function () {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the event draggable using jQuery UI
            $(this).draggable(
                    {
                        zIndex: 999,
                        revert: true,      // will cause the event to go back to its
                        revertDuration: 0,  //  original position after the drag,
                        start: function () {
                            if (typeof mainYScroller != 'undefined') mainYScroller.disable();
                        },
                        stop: function () {
                            if (typeof mainYScroller != 'undefined') mainYScroller.enable();
                        }
                    });


        });


        /* initialize the calendar
         -----------------------------------------------------------------*/

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar
            drop: function (date, allDay) {
                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }

        });

    });


</script>


<%@include file="lnc/bottomjs.jsp" %>
</body>
</html>