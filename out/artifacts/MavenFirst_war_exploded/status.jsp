<%--
  Created by IntelliJ IDEA.
  User: Dell 15R
  Date: 29-06-2015
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<form id="statusForm" action="javascript:void(0);">

  <table>
    <tr>
      <td>Status</td>
      <td><input type="text" id="status" name="status"/> </td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" id="submitStatus" value="Submit"> </td>
    </tr>
  </table>
</form>

<table id="StatusTable" border="1">
  <thead>
  <tr>

    <th>
      Status Id
    </th>

    <th>
      Status
    </th>
  </tr>
  </thead>
  <tbody>

  </tbody>
</table>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/status.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
   // status.init();
    // status.getStatusList();
  });
</script>
</body>
</html>
