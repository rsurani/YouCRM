<%--
  Created by IntelliJ IDEA.
  User: Mausam
  Date: 7/10/2015
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@include file="lnc/head.jsp" %>
<body>

<!-- Start Content -->
<div class="container-fluid">

  <%@include file="lnc/header.jsp"%>

  <div id="wrapper">
    <%@include file="lnc/left.jsp"%>

    <div id="content">
      <!-- start page content here -->
      <form class="form-horizontal" id="countryForm" action="javascript:void(0);">
        <div class="well">
          <h4>Enter Country</h4>

          <hr class="separator-bottom">
          <div class="row-fluid">
            <div class="span5">
              <div class="control-group">
                <label class="control-label">
                  Country
                </label>

                <div class="controls">
                  <input type="text" placeholder="Enter Country" class="span10" id="countryName" name="location"/>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="form-actions" style="margin: 0;">
          <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitCountry" ><i></i>Save</button>
          <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
          </button>

        </div>
      </form>

      <div class="innerLR">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="countryTable">

        </table>
      </div>

    </div>
  </div>
  <%@include file="lnc/bottomjs.jsp"%>
  <script type="text/javascript">
    $(document).ready(function() {

      countryManager.init();

      countryManager.fetchCountry();
    });
  </script>
</body>
</html>
