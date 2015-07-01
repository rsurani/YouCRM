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
            <div class="heading-buttons">
                <div class="separator"></div>
                <h3 class="glyphicons display"><i></i> Customer Detail</h3>
            </div>

            <div class="separator"></div>

            <!-- modal--->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="exampleModalLabel">Meeting Schedule</h4>
                        </div>
                        <div class="modal-body">

                            <!-- form for  modal element--->

                            <form>
                                <div class="form-group">
                                    <label class="control-label">Assign To:</label>
                                    <input type="datetime" class="form-control" id="compName">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Meeting Date\Time:</label>
                                    <input type="datetime-local" class="form-control" id="nextCall">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <div class="innerLR">

                <table class="dynamicTable table table-striped table-bordered table-primary table-condensed">
                    <thead>
                    <tr>
                        <th>Contact Person Name</th>
                        <th>Company Name</th>
                        <th>Contact Nunber</th>
                        <th>Email id</th>
                        <th>Add Meeting Schedule</th>
                        <th class="center" style="width: 60px;">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="gradeX">
                        <td>Trident</td>
                        <td>Internet Explorer 4.0</td>
                        <td>Win 95+</td>
                        <td class="center">4</td>
                        <td class="center"><a href="" class="btn btn-default" data-toggle="modal" data-target="#exampleModal"><i></i> Schedule</a></td>

                        <td class="center">
                            <a href="product_edit.html?lang=en" class="btn-action glyphicons pencil btn-success"><i></i></a>
                            <a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
                        </td>

                    </tr>
                    <tr class="gradeC">
                        <td>Trident</td>
                        <td>Internet Explorer 5.0</td>
                        <td>Win 95+</td>
                        <td class="center">5</td>
                        <td class="center"><a href="" class="btn btn-default" data-toggle="modal" data-target="#exampleModal"><i></i> Schedule</a></td>
                        <td class="center">
                            <a href="product_edit.html?lang=en" class="btn-action glyphicons pencil btn-success"><i></i></a>
                            <a href="#" class="btn-action glyphicons remove_2 btn-danger"><i></i></a>
                        </td>

                    </tr>
                    </tbody>
                </table>
            </div>
            <br/>

            <!-- End Content -->
        </div>
        <!-- End Wrapper -->
    </div>

    <!-- Sticky Footer -->
</div>

<%@include file="lnc/bottomjs.jsp" %>

</body>
</html>