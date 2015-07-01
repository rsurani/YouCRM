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
        <h3 class="glyphicons display"><i></i> Assign Roles</h3>
      </div>

      <div class="separator"></div>
      <div class="innerLR">
        <form class="form-horizontal">
          <div class="well">
            <div class="row-fluid">
              <div class="span6">
                <div class="control-group">
                  <label class="control-label">Select Role</label>
                  <div class="controls">
                    <select>
                      <option>Manager</option>
                      <option>Team Leader</option>
                    </select>
                  </div>
                </div>
                <div class="separator"></div>
                <div class="control-group">
                  <label class="control-label">Description</label>
                  <div class="controls">
                    <textarea id="description" rows="5" class="span10"></textarea>
                  </div>
                </div>
              </div>
            </div>
            <div class="separator"></div>
            <table class="table table-condensed">
              <thead>
              <tr>
                <th class="center"><input type="checkbox"></th>
                <th></th>
                <th class="center">View</th>
                <th class="center">Create</th>
                <th class="center">Edit</th>
                <th class="center">Delete</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Dashboard</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Leads</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Meetings</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Reports</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Charts</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              <tr>
                <td class="center"><input type="checkbox"></td>
                <td>Calendar</td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
                <td class="center"><input type="checkbox"></td>
              </tr>
              </tbody>
            </table>
            <div class="separator"></div>
            <div class="form-actions" style="margin: 0;">
              <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save
              </button>
              <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
              </button>
            </div>
          </div>

        </form>
      </div>


      <!-- End Content -->
    </div>
    <!-- End Wrapper -->
  </div>

  <!-- Sticky Footer -->


</div>

<%@include file="lnc/bottomjs.jsp" %>


</body>
</html>