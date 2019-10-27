<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%ResultSet resultset2 =null;%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Venda</title>
</head>
<body bgcolor="#FFFFFF">
<div align="center"><b>Venda</b><br>
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

       resultset =statement.executeQuery("select * from contatos") ;
       resultset2 =statement2.executeQuery("select * from produto") ;
%>
<form method="post" action="Venda_Novo.jsp">
<table width="30%" border="1" align="center">

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

 <td width="15%"><b>Produto</td>
<td width="15%">
  <select name="produto">
        <%  while(resultset2.next()){ %>
            <option><%= resultset2.getString(2)%></option>
            
        <% } %>
  </select>
</td>
</tr>

<tr>
<td width="15%"><b>Quantidade</td>
<td width="15%">
<input type="text" name="quantidade" size="50" maxlength="50">(*)
</td>
</tr>


<tr>
<td width="15%"><b>Valor Recebido</td>
<td width="15%">
<input type="text" name="valorrecebido" size="50" maxlength="50">(*)
</td>
</tr>

<tr>
<td align="center" colspan="2"><b>(*) Campos obrigatórios</td>
</tr>
</table>
<p align="center">
<input type="submit" name="Gravar" value="Gravar">
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