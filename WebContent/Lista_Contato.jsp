<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<style>
table {
    border-collapse: collapse;
}

 th {
background-color: #F5BCA9;
    color: black;
        font-family: verdana;  
font-size:14px
    }

table, td , th{
    border: 1px solid black;
}

td{
      font-family: verdana;  
font-size:12px
}



</style>
<title>Lista de Clientes</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/CIABOLO"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from contatos order by nomecontato;
</sql:query>

<sql:query dataSource="${snapshot}" var="result2">
select count(*) as total from contatos;
</sql:query>

<b>Lista de Clientes
<p>
<table border="1" width="100%" >
<tr>
   <th>ID</th>
   <th>Nome</th>
   <th>Endereco</th>
   <th>Bairro</th>
   <th>e-mail</th>
      <th>Facebook</th>
         <th>Telefone</th>
            <th>Empresa</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.nomecontato}"/></td>
   <td><c:out value="${row.endcontato}"/></td>
      <td><c:out value="${row.bairro}"/></td>
   <td><c:out value="${row.email}"/></td>
    <td><c:out value="${row.facebook}"/></td>
     <td><c:out value="${row.fone}"/></td>
      <td><c:out value="${row.empresa}"/></td>
</tr>
</c:forEach>
</table>


<p>
<b>Número de Clientes

<table border="1" width="5%" >
<c:forEach var="row" items="${result2.rows}">
<tr>
   <td><c:out value="${row.total}"/></td>
 
</tr>
</c:forEach>
</table>
<p>

 <a href="javascript:window.print()">Imprimir</a>
</body>
</html>