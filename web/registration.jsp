
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>

</head>
<body>

<form id="userRegistration" action="javascript:void(0);">
    <table>
        <tr>
            <td>Role</td>
            <td>
                <select name="userRole" id="role">
                    <option value="1">Super</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Login Id</td>
            <td><input type="text" name="userName" id="loginId"> </td>
        </tr>

        <tr>
            <td>Password</td>
            <td><input type="password" name="userPassword" id="password"> </td>
        </tr>

        <tr>
            <td>Designation</td>
            <td>
                <select name="userDesignation" id="designation">

                </select>
            </td>
        </tr>

        <tr>
            <td>Contact Number</td>
            <td><input type="text" name="userContact" id="contact"> </td>
        </tr>

        <tr>
            <td>Email Id</td>
            <td><input type="email" name="userEmail" id="email"> </td>
        </tr>

        <tr>
            <td colspan="2"><input type="submit" name="submit" value="submit" id="addUser"></td>
        </tr>

    </table>
</form>

<button id="userDetail">Show Detail</button>


<table id="UserTable" border="1">
    <thead>
    <tr>

        <th>
            User Id
        </th>

        <th>
            Role
        </th>

        <th>
            UserName
        </th>

        <th>
            Designation
        </th>

        <th>
            Contact
        </th>

        <th>
            Email ID
        </th>

    </tr>
    </thead>
    <tbody>

    </tbody>
</table>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/global.js"></script>
<script src="js/user-registration.js"></script>
<script>

    $(document).ready(function(){

        UserEntry.init();
        UserEntry.fetchUserRecord();
        UserEntry.fetchRecord();


    })

</script>

</body>

</html>
