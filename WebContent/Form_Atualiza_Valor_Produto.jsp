<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%ResultSet resultset2 =null;%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualiza Valor Produto</title>
</head>
<body bgcolor="#FFFFFF">

<div ><b>Atualiza Valor Produto</b><br>
</div>
<p>
<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/CIABOLO?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from produto") ;

%>
<form method="post" action="Atualiza_Valor_Produto.jsp" target="Principal">
<table width="32%" border="1" >

 <tr>
 <td width="15%"><b>Produto</td>
<td width="15%">
  <select name="produto">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
            
        <% } %>
  </select>
  </td>
</tr>
 <tr>
<td width="16%"><b>Novo Valor</td>
<td width="50%">
<input type="text" name="valor_novo" size="50" maxlength="50">(*)
</td>
</tr>


<tr>
<td  colspan="2"><b>(*) Campos obrigatórios</td>
</tr>
</table>
<p >
<input type="submit" name="Enviar" value="Enviar">
<input type="reset" name="Limpar" value="Limpar">
</p>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</form>
</body>
</html>