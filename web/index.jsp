<!DOCTYPE html>
<%@include file="lnc/head.jsp" %>
<body>


<!-- Start Content -->
<div class="container-fluid">
  <%@include file="lnc/header.jsp" %>
  <div id="wrapper">
    <%@include file="lnc/left.jsp" %>
    <div id="content">



      <div id="dashBoradForm">
      <%@include file="/dashboard.jsp" %>
      </div>


      <div id="calenderForm" style="display: none;">
        <%@include file="/calender.html" %>
      </div>




  </div>

  <!-- script for modal box -->

  <%@include file="lnc/bottomjs.jsp" %>
</div>

<script>

  $(document).ready(function(){

    UserEntry.init();
    UserEntry.fetchUserRecord();
    UserEntry.fetchRecord();


  })

</script>


      <%
  String name = request.getParameter("name");
  out.println("Name: "+name);
  if(name!=null && name.equals("calendar")){
    out.println(name);
%>

    <script>
      $('#dashBoradForm').css({"display":"none"});
      $('#calenderForm').css({"display":"block"});

    </script>
      <%
  }
%>
</body>
</html>