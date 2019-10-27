<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
table,th,td
{
border:1px solid white;
}
b {
      font-family: verdana;  
}

td{
      font-family: verdana;  
font-size:13px
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <body style="background:#FFFFFF">
 
    
        <form method="post" action="login.jsp">
        <input type="hidden" name="IP" value="<%request.getRemoteAddr();%>" />
        
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Usuário</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Você não está registrado.</td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
