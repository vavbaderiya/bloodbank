<%
     long val=session.getCreationTime();
     int ia=session.getMaxInactiveInterval();
     java.util.Date dt=new java.util.Date(val);
    String id=(String)session.getAttribute("did");
    if(id==null){
      response.sendRedirect("index.jsp");
  }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>hello <%=id%></h1>
        <h4>You are with us since <%=dt%></h4>
        <h5>If you remain idle for <%=ia%> seconds, your session will expire</h5>
    </body>
</html>
