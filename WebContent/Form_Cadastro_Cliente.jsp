<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%ResultSet resultset2 =null;%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>

b {
      font-family: verdana;  
}

td{
      font-family: verdana;  
font-size:13px
}

table,th,td
{
border:1px solid white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CIA DO BOLO</title>
</head>
<body bgcolor="#FFFFFF">

<div ><b>Cadastro de Cliente</b><br>
</div>
<p>
<% 
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/CIABOLO?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from bairros order by bairro") ;
%>
<form method="post" action="Cadastra.jsp" target="Principal">
<table width="32%" border="1"  >
<tr>
<td width="16%"><b>Email</td>
<td width="50%">
<input type="text" name="email" size="50" maxlength="50">(*)
</td>
</tr>
<tr>
<td width="16%"><b>Nome</td>
<td width="50%">
<input type="text" name="nomecontato" size="50" maxlength="50">(*)
</td>
</tr>
<tr>
<td width="16%"><b>Endereço</td>
<td width="50%">
<input type="text" name="endcontato" size="50" maxlength="50">(*)
</td>
</tr>
<tr>

<td width="16%"><b>Bairro</td>
<td width="50%">
 <select name="bairro">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
            
        <% } %>
  </select>
</td>
</tr>
<tr>
<td width="16%"><b>Facebook</td>
<td width="50%">
<input type="text" name="facebook" size="50" maxlength="50">(*)
</td>
</tr>
<tr>
<td width="16%"><b>Fone</td>
<td width="50%">
<input type="text" name="fone" size="10" maxlength="10">(*)
</td>
</tr>
<tr>
<td width="16%"><b>Empresa</td>
<td width="50%">
<input type="text" name="empresa" size="50" maxlength="50">
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
</form>
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</body>
</html>