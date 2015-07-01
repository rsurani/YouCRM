<%--
  Created by IntelliJ IDEA.
  User: Mayank
  Date: 6/16/2015
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>

    <title></title>
  </head>
  <body>

  <form id="loginForm" action="javascript:void(0);">
    <input type="text" name="username" placeholder="UserName" id="name" />
    <input type="password" name="password" placeholder="Password" id="password" />
    <input type="submit"  value="Login" id="loginAction">
  </form>

  </body>
  <script src="js/app.js"></script>
  <script src="js/jquery-1.11.3.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      loginManager.init();
    });
  </script>

</html>
