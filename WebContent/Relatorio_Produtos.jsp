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
<title>Relatório de Produtos</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/CIABOLO"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
select Categoria_c,NomeProduto,FORMAT(Preco,2, 'pt_BR') as Preco,Unidade from produto order by Categoria_c , NomeProduto;
</sql:query>
 <b>Relatório de Produtos
<p>
<table border="1" width="40%" class="zebra">

<tr>
   <th align="left">Categoria</th>
   <th align="left">Produto</th>
   <th align="right">Preço</th>
   <th align="right">Unidade</th>
  
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Categoria_c}"/></td>
   <td><c:out value="${row.NomeProduto}"/></td>
   <td align="right"><c:out value="${row.Preco}"/></td>
   <td align="right"><c:out value="${row.Unidade}"/></td>
  
</tr>


</c:forEach>
</table>
<a href="javascript:window.print()">Imprimir</a>
 
 
 
 
</body>
</html>