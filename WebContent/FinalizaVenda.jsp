<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>Finaliza Venda</title>
</head>
<style>
table {
    border-collapse: collapse;
}

 th {
background-color: #F5BCA9;
    color: black;
    }

table, td , th{
    border: 1px solid black;
}


</style>
<body>
<%
      String mensagem = "Venda realizada com sucesso!";
    %>
    <% out.println(mensagem); %>

 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/CIABOLO"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
select * from venda ORDER BY VendaId DESC LIMIT 1; ;
</sql:query>
 
<table border="1" width="70%">
<tr>
   <th>Venda ID</th>
   <th>Cliente</th>
   <th>Categoria</th>
   <th>Produto</th>
   <th>Preco</th>
      <th>Unidade</th>
         <th>Quantidade</th>
            <th>Total</th>
            <th>Valor Recebido</th>
            
</tr>
<p>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.VendaId}"/></td>
   <td><c:out value="${row.Cliente}"/></td>
   <td><c:out value="${row.Categoria_v}"/></td>
   <td><c:out value="${row.NomeProduto_v}"/></td>
   <td><c:out value="${row.Preco}"/></td>
    <td><c:out value="${row.Unidade_v}"/></td>
     <td><c:out value="${row.Quantidade}"/></td>
      <td><c:out value="${row.Total}"/></td>
            <td><c:out value="${row.Valor_Recebido}"/></td>
      
</tr>
</c:forEach>
</table>
 
</body>
</html>