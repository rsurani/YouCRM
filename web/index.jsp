<!DOCTYPE html>
<%@include file="lnc/head.jsp" %>
<body>


<!-- Start Content -->
<div class="container-fluid">
  <%@include file="lnc/header.jsp" %>
  <div id="wrapper">
    <%@include file="lnc/left.jsp" %>
    <div id="content">


    </div>


  </div>
  <%@include file="lnc/bottomjs.jsp" %>
    <script>
    $(document).ready(function(){
      formRender.init();
      menuManager.init();
      loginManager.init();
    })

  </script>

</body>
</html>