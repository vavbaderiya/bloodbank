<%
     int n=session.getMaxInactiveInterval();
    String id=(String)session.getAttribute("adid");
     if(id==null){
      response.sendRedirect("index.jsp");
  }
%>


<html>
    <body>
          <h1>welcome <%=id%> </h1>
          <h5>If you remain idle for <%=n%> seconds, your session will expire</h5>
          <hr>
        <pre>
        <a href="donarlist.jsp">Show-Donar-List</a>
        <a href="requestlist.jsp">Show-Request-List</a>
        <a href="">Logout</a>
        </pre>
        <hr>
          
    </body>
</html>
