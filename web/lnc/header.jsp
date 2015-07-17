<div class="navbar main">
    <a href=" " class="appbrand"><span><img src="../images/logo.png" id="logo"></span></a>
    <button type="button" class="btn btn-navbar">
        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
    </button>
    <ul class="topnav pull-right">
        <li class="visible-desktop">
            <ul class="notif">
                <li><a href="" class="glyphicons envelope" data-toggle="tooltip" data-placement="bottom"
                       data-original-title="0 new mails"><i></i> 0</a></li>
                <li><a href="" class="glyphicons log_book" data-toggle="tooltip" data-placement="bottom"
                       data-original-title="0 new reminders"><i></i> 0</a></li>
            </ul>
        </li>
        <li class="account">
            <a data-toggle="dropdown" href=" " class="glyphicons logout user"><span
                    class="hidden-phone text" id="loginName"></span><i></i></a>
            <ul class="dropdown-menu pull-right">
                <li><a href="manageRoles.jsp" class="glyphicons cogwheel">Assign Roles<i></i></a></li>

                <li class="highlight profile">
							<span>
								<span class="heading">Profile <a href="profile.jsp" class="pull-right">edit</a></span>
								<span class="img"></span>
								<span class="details">
									<%session.getAttribute("loginId");%>
								</span>
								<span class="clearfix"></span>
							</span>
                </li>
                <li>
							<span>
								<a class="btn btn-default btn-small pull-right"
                                   style="padding: 2px 10px; background: #fff;" href="login.jsp">Sign Out</a>
							</span>
                </li>
            </ul>
        </li>
    </ul>
</div>