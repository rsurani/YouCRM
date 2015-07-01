<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%--included css--%>
<%@include file="lnc/head.jsp" %>
<body>

<%--include page content here--%>

<div id="wrapper">

    <div id="login">
        <form class="form-signin" method="post" action="javascript:void(0);" id="loginForm">
            <img src="images/logo.png">

            <div class="separator"></div>

            <input class="input-block-level" id="username" name="userName" type="text" required="required"
                   pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{5,20}$" placeholder="User Name"/>

            <input class="input-block-level" id="password"  name="userPassword" type="password" required="required"
                   placeholder="Password"/>

            <button class="btn btn-large btn-primary" type="submit" id="loginAction">Sign in</button>

            <div class="separator"></div>
        </form>

    </div>
</div>
<script src="js/app.js"></script>
<script src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        loginManager.init();
    });
</script>
</body>
</html>
