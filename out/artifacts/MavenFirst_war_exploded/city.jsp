<%--
  Created by IntelliJ IDEA.
  User: VASANI Grp
  Date: 7/14/2015
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>

<%@include file="lnc/head.jsp" %>
<body>
<!-- Start Content -->
<div class="container-fluid">

  <%@include file="lnc/header.jsp"%>

  <div id="wrapper">
    <%@include file="lnc/left.jsp"%>

    <div id="content">
      <!-- start page content here -->
      <form class="form-horizontal" id="cityForm" action="javascript:void(0);">
        <div class="well">
          <h4>Enter State</h4>

          <hr class="separator-bottom">
          <div class="row-fluid">
            <div class="span5">

              <div class="control-group">


                <div>
                  <label class="control-label">Select Country</label>
                  <div class="controls">
                    <select name="locationId" id="country" onchange="cityManager.fetchCountryId()">

                    </select>
                  </div>
                </div>
                <br>

                <div>
                  <label class="control-label">Select State</label>
                  <div class="controls">
                    <select name="locationId" id="state" >

                    </select>
                  </div>
                </div>
                <br>

                <label class="control-label">
                  City
                </label>

                <div class="controls">
                  <input type="text" placeholder="Enter city" class="span10" id="cityName" name="location"/>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="form-actions" style="margin: 0;">
          <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok" id="submitCity" ><i></i>Save</button>
          <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
          </button>

        </div>
      </form>

      <div class="innerLR">

        <table class="dynamicTable table table-striped table-bordered table-primary table-condensed" id="cityTable">

        </table>
      </div>

    </div>
  </div>
  <%@include file="lnc/bottomjs.jsp"%>
  <script type="text/javascript">
    $(document).ready(function() {
      cityManager.init();
      cityManager.fetchRecord();
      cityManager.fetchCity();
    });
  </script>
</body>
</html>
