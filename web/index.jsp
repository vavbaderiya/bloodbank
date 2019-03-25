<%
    String v1="",v2="";
    Cookie ck[]=request.getCookies();
    if(ck!=null){
    for(Cookie c:ck){
        String s=c.getName();
        if(s.equals("id")){
            v1=c.getValue();
        }else if(s.equals("pw")){
            v2=c.getValue();
         }
    }
    }
 %>
<html>
    <body>
        <h3>blood bank</h3>
        <hr>
        <form action="VerifyUser1" method="post">
            <pre>
            Userid      <input type="text" name="userid" required placeholder="userid" value="<%=v1%>"/>
            Password    <input type="password" name="password" required placeholder="password" value="<%=v2%>"/>
            Usertype    <select name="usertype"> <option>Admin</option><option>Donar</option><option>Requestor</option></select>
            Save Pwd    <input type="checkbox" name="save"/>
                        <input type="submit" value="Login"/>
            </pre>
        </form>
        <hr>
        <a href="registration.jsp">Register-Donar</a>
         <a href="registration1.jsp">Register-Request</a>
    </body>
</html>
