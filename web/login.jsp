
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

    <script type="text/javascript">
//        $(document).ready(function() {
         loginManager.init();



            //test
//        });
    </script>


