<%--
  Created by IntelliJ IDEA.
  User: Dell 15R
  Date: 10-07-2015
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form id="logoutForm"  method="post" action="javascript:void(0);">
Welcome, <input type="text" value=<%=session.getAttribute("loginId")%>>
<input type="button" value="Logout" id="logout"/>
  </form>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/app.js"></script>
<script src="js/global.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    loginManager.init();
  });
</script>

</body>
</html>
