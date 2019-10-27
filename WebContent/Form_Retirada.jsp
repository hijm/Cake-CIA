<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%ResultSet resultset2 =null;%>

<%ResultSet resultset3 =null;%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="calend" %>

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
  <link href="jquery-ui.css" rel="stylesheet">
    <script src="jquery.js"></script>
    <script src="jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda</title>
</head>
<body bgcolor="#FFFFFF">

<div ><b>Retirada</b><br>
</div>
<p>
<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/CIABOLO?user=root&password=root");

       Statement statement = connection.createStatement() ;
       Statement statement2 = connection.createStatement() ;
       Statement statement3 = connection.createStatement() ;

       resultset =statement.executeQuery("select * from contatos") ;
       resultset2 =statement2.executeQuery("select * from contatos where admin='1'") ;
       resultset3 =statement3.executeQuery("select * from produto") ;

%>
<form method="post" action="Retirada_Engine.jsp" target="Principal">
<table width="25%" border="1" >


 <tr>
 <td width="15%"><b>Responsável</td>
<td width="15%">
  <select name="responsavel">
        <%  while(resultset2.next()){ %>
            <option><%= resultset2.getString(2)%></option>
            
        <% } %>
  </select>
  </td>
</tr>

 <tr>
 <td width="15%"><b>Cliente</td>
<td width="15%">
  <select name="cliente">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
            
        <% } %>
  </select>
  </td>
</tr>

<tr>
 <td width="15%"><b>Motivo</td>
<td width="15%">
 <input type="text" name="motivo" size="30" maxlength="30">(*)
  </td>
</tr>


<tr>
<td width="16%"><b>Data da Retirada</td></b>
<td width="16%"><calend:campoData id="dataretirada" /><br />
</td>
</tr>



 <tr>

 <td width="15%"><b>Produto</td>
<td width="15%">
  <select name="produto">
        <%  while(resultset3.next()){ %>
            <option><%= resultset3.getString(2)%></option>
            
        <% } %>
  </select>
</td>
</tr>

 <tr>


<tr>
<td width="15%"><b>Quantidade</td>
<td width="15%">
<input type="text" name="quantidade" size="10" maxlength="10">(*)
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