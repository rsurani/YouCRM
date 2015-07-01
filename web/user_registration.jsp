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
        <h3><i></i> User Registration</h3>

      </div>

      <!--alert content--->
      <div class="innerLR">
        <div class="alert alert-error">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>Ooops!</strong> Change a few things up and try save
          again.
        </div>
        <div class="alert alert-success">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <strong>Well done!</strong> You successfully saved this important
          details.
        </div>

        <!--user registration entry form content--->

        <form class="form-horizontal" id="userRegistration" action="javascript:void(0);">
          <div class="well">
            <h4>Enter User registration details</h4>

            <div class="separator"></div>
            <div class="row-fluid">
              <div class="span5">
                <div class="control-group">
                  <label class="control-label">Select Role</label>
                  <div class="controls">
                    <select name="userRole" id="role">
                      <option value="1">Manager</option>
                      <option value="2">Team Leader</option>
                    </select>
                  </div>
                </div>
                <div class="separator"></div>

                <div class="control-group">
                  <label class="control-label">Login Id</label>

                  <div class="controls">
                    <input type="text" name="userName" id="loginId" placeholder="Enter Login id" class="span10"/>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">Password</label>
                  <div class="controls">
                    <input type="password" name="userPassword" id="password" placeholder="Enter password" class="span10"/>
                  </div>
                </div>

                </div>
              <div class="span5">
                <div class="control-group">
                  <label class="control-label">Select Designation</label>
                  <div class="controls">
                    <select name="userDesignation" id="designation">

                    </select>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">Phone</label>

                  <div class="controls">
                    <div class="input-prepend">
                      <span class="add-on glyphicons phone"><i></i></span>
                      <input type="text" name="userContact" id="phone" class="input-large"
                             placeholder="e.g. 9835678345">
                    </div>
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">E-mail</label>

                  <div class="controls">
                    <div class="input-prepend">
                      <span class="add-on glyphicons phone"><i></i></span>
                      <input type="text" name="userEmail" id="email" class="input-large"
                             placeholder="contact@mosaicpro.biz">
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>
          <hr class="separator bottom"/>
          <div class="form-actions" style="margin: 0;">
            <button type="submit" name="submit" id="addUser" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
            <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
            </button>
          </div>

        </form>

        <div class="innerLR">

          <table id="UserTable" class="dynamicTable table table-striped table-bordered table-primary table-condensed">
            <h4>User Details</h4>
            <hr class="separator-bottom">
            <%--<thead>
            <tr>
              <th>User Id</th>
              <th>Role</th>
              <th>User Name</th>
              <th>Designation</th>
              <th >Contact</th>
              <th>Email id</th>
              <th>Edit / Delete</th>
            </tr>
            </thead>
            <tbody>

            </tbody>--%>
          </table>
        </div>

      </div>
      <!-- End Content -->
    </div>
    <!-- End Wrapper -->
  </div>

  <!-- script for modal box -->

  <%@include file="lnc/bottomjs.jsp" %>
</div>

<script>

  $(document).ready(function(){

    UserEntry.init();
    UserEntry.fetchUserRecord();
    UserEntry.fetchRecord();


  })

</script>

</body>
</html>