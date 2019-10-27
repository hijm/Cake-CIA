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
<title>Atualiza Cliente</title>
</head>
<body bgcolor="#FFFFFF">

<div ><b>Atualiza Cliente</b><br>
</div>
<p>
<%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost/CIABOLO?user=root&password=root");
	
       Statement statement2 = connection.createStatement() ;

       Statement statement = connection.createStatement() ;
       resultset2 =statement2.executeQuery("select * from bairros order by bairro") ;

       resultset =statement.executeQuery("select * from contatos order by nomecontato") ;

%>
<form method="post" action="Atualiza_Cadastro.jsp" target="Principal">
<table width="32%" border="1" >

 <tr>
 <td width="15%"><b>Nome Contato</td>
<td width="15%">
  <select name="nomecontato_a">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(2)%></option>
            
        <% } %>
  </select>
  </td>
</tr>
 <tr>
<td width="16%"><b>E-mail</td>
<td width="50%">
<input type="text" name="email_a" size="50" maxlength="50">(*)
</td>
</tr>

<tr>
<td width="16%"><b>Endereço</td>
<td width="50%">
<input type="text" name="endcontato_a" size="50" maxlength="50">(*)
</td>
</tr>
<tr>
 <td width="15%"><b>Bairro</td>
<td width="15%">
  <select name="bairro_a">
        <%  while(resultset2.next()){ %>
            <option><%= resultset2.getString(1)%></option>
            
        <% } %>
  </select>
  </td>
</tr>
<tr>
 <td width="15%"><b>Facebook</td>
<td width="15%">
 <input type="text" name="facebook_a" size="50" maxlength="50">(*)

  </td>
</tr>

<tr>
 <td width="15%"><b>Fone</td>
<td width="15%">
 <input type="text" name="fone_a" size="50" maxlength="50">(*)

  </td>
</tr>


<tr>
 <td width="15%"><b>Empresa</td>
<td width="15%">
 <input type="text" name="empresa_a" size="50" maxlength="50">(*)

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