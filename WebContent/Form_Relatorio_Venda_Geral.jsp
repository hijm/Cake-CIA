
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="calend" %>

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
  </head>
  
<title>Relatório Vendas Geral</title>
</head>
<body>

<div ><b>Relatório de Vendas Geral</b><br>
<p>
</div>
<form method="post" action="Relatorio_Vendas_Geral.jsp" target="Principal">
<table>
<tr>
<td width="16%"><b>Data Inicial
<calend:campoData id="datainicial" /></td>
</tr>
<tr>
<td width="16%"><b>Data Final
<calend:campoData id="datafinal" /></td>
</tr>
</table>
<input type="submit" name="Enviar" value="Enviar">
<input type="reset" name="Limpar" value="Limpar">
</p>
</br>

</form>

 
</body>
</html>

