<%--
  Created by IntelliJ IDEA.
  User: Dell 15R
  Date: 29-06-2015
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form id="designationForm" action="javascript:void(0);">

  <table>
    <tr>
      <td>Designation</td>
      <td><input type="text" id="userDesignation" name="designation"/> </td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" id="submitDesignation" value="Submit"> </td>
    </tr>
  </table>
  </form>

<table id="DesignationTable" border="1">
  <thead>
  <tr>

    <th>
      Designation Id
    </th>

    <th>
      Designation
    </th>
  </tr>
  </thead>
  <tbody>

  </tbody>
</table>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/global.js"></script>
<script src="js/designation.js"></script>
<script type="text/javascript">
  $(document).ready(function() {

    designation.init();
    designation.initCallback();
  });
</script>
</body>
</html>
