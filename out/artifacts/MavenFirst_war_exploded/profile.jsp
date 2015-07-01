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
                <h3 class="glyphicons user"><i></i>Account setting</h3>


            </div>
            <div class="innerLR">
                <div class="alert alert-error">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Oh snap!</strong> Change a few things up and try submittingagain.
                </div>
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Well done!</strong> You successfully read this important
                    alert message.
                </div>

                <form class="form-horizontal" method="post" action="#">
                    <div class="well">
                        <div class="row-fluid">
                            <div class="span3">
                                <strong>Change password</strong>
                            </div>
                            <div class="span9">
                                <label for="inputUsername">Username</label>
                                <input type="text" id="inputUsername" class="span6" placeholder="Enter User Name"/>

                                <div class="separator"></div>

                                <label for="inputPasswordOld">Old password</label>
                                <input type="password" id="inputPasswordOld" class="span6" placeholder="Enter Old Password"/>

                                <div class="separator"></div>

                                <label for="inputPasswordNew">New password</label>
                                <input type="password" id="inputPasswordNew" class="span6" value="" placeholder="Enter New Password"/>

                                <div class="separator"></div>

                                <label for="inputPasswordNew2">Repeat new password</label>
                                <input type="password" id="inputPasswordNew2" class="span6" value="" placeholder="ReEnter New Password"/>

                                <div class="separator"></div>
                            </div>
                        </div>
                        <hr class="separator bottom"/>
                        <div class="row-fluid">
                            <div class="span3">
                                <strong>Contact details</strong>

                            </div>
                            <div class="span9">
                                <div class="row-fluid">
                                    <div class="span6">
                                        <label for="inputPhone">Phone</label>

                                        <div class="input-prepend">
                                            <span class="add-on glyphicons phone"><i></i></span>
                                            <input type="text" id="inputPhone" class="input-large" placeholder="9852639214"/>
                                        </div>

                                        <div class="separator"></div>

                                        <label for="inputEmail">E-mail</label>

                                        <div class="input-prepend">
                                            <span class="add-on glyphicons envelope"><i></i></span>
                                            <input type="text" id="inputEmail" class="input-large" placeholder="contact@mosaicpro.biz"/>
                                        </div>

                                        <div class="separator"></div>

                                        <label for="inputWebsite">Website</label>

                                        <div class="input-prepend">
                                            <span class="add-on glyphicons link"><i></i></span>
                                            <input type="text" id="inputWebsite" class="input-large" placeholder="http://www.mosaicpro.biz"/>
                                        </div>

                                        <div class="separator"></div>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="form-actions" style="margin: 0; padding-right: 0;">
                            <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok pull-right">
                                <i></i>Save changes
                            </button>
                        </div>
                    </div>


                </form>
                <br>


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