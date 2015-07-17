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
      <form class="form-horizontal" id="statusForm" action="javascript:void(0);">
        <div class="well">
          <h4>Enter Status</h4>

          <hr class="separator-bottom">
          <div class="row-fluid">
            <div class="span5">
              <div class="control-group">
                <label class="control-label">
                  Status
                </label>

                <div class="controls">
                  <input type="text" placeholder="Enter status type" class="span10" id="userStatus" name="statusType"/>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="form-actions" style="margin: 0;">
          <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitStatus" ><i></i>Save</button>
          <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
          </button>

        </div>
      </form>

      <div class="innerLR">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="statusTable">

        </table>
      </div>

    </div>
  </div>
  <%@include file="lnc/bottomjs.jsp"%>
  <script type="text/javascript">
    $(document).ready(function() {

      statusManager.init();

      statusManager.fetchStatus();
    });
  </script>
</body>
</html>