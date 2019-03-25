<html>
    <body>
        <h3>Registration-Form</h3>
        <hr>
        <form action="SaveRequestor">
            <pre>
            Userid      <input type="text" name="userid"required placeholder="userid"/>
            Password    <input type="password" name="password" required placeholder="password"/>
            Name        <input type="text" name="username" required placeholder="name"/>
            Address     <input type="text" name="address" required placeholder="Location"/>
            Mobile      <input type="text" name="mobile" required placeholder="Phone number"/>
            Age         <input type="text" name="age" required placeholder="Age"/>
            Email       <input type="text" name="email" required placeholder="email address"/>
            Cause       <input type="text" name="cause" required placeholder="Reson for reqirement here">
            Blood Group <select name="bgroup"><option value="A1+">A1+</option>
                                                  <option value="A1-">A1-</option>
                                                  <option value="A2+">A2+</option>
                                                  <option value="A2-">A2-</option>
                                                  <option value="B+">B+</option>
                                                  <option value="B-">B-</option>
                                                  <option value="A1B+">A1B+</option>
                                                  <option value="A1B-">A1B-</option>
                                                  <option value="A2B+">A2B+</option>
                                                  <option value="A2B-">A2B-</option>
                                                  <option value="AB+">AB+</option>
                                                  <option value="AB-">AB-</option>
                                                  <option value="O+">O+</option>
                                                  <option value="O-">O-</option>
                                                  <option value="A+">A+</option>
                                                  <option value="A-">A-</option>
                                                  <option value="RH+">RH+</option>
                                                  <option value="RH-">RH-</option></select> 
            

            <input type="submit" value="Register-Request"/>
            </pre>
        </form>
        <hr>
        <a href="index.jsp">Home</a>
    </body>
</html>