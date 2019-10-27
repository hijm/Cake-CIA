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
<title>Relatorio de Retirada</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/CIABOLO"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT  Responsavel , Cliente , Categoria_r, NomeProduto_r   , FORMAT(Preco,2, 'pt_BR') as Preco ,Unidade_r ,FORMAT(Quantidade,2, 'pt_BR') as  Quantidade ,FORMAT(Total,2, 'pt_BR') as Total ,DATE_FORMAT(DataHora,'%d/%m/%Y') as DataHora, Motivo  from retirada where DataHora BETWEEN NOW() - INTERVAL 30 DAY AND NOW();
</sql:query>

<sql:query dataSource="${snapshot}" var="result2">
select FORMAT(SUM(Total),2, 'pt_BR')  as Valor_Total from retirada where DataHora BETWEEN NOW() - INTERVAL 30 DAY AND NOW() ;
</sql:query>

<sql:query dataSource="${snapshot}" var="result3">
 select sum(Total) as Venda_Total from venda  where DataHora BETWEEN NOW() - INTERVAL 30 DAY AND NOW();
</sql:query>



 <b>Relatório de Retirada - Últimos 30 Dias
<p>
<table border="1" width="70%" >

<tr>
   <th align="left">Responsável</th>
   <th align="left">Cliente</th>

   <th align="left">Categoria</th>
   <th align="left">Produto</th>
   <th align="left">Preço</th>

   <th align="left">Unidade</th>
   <th align="right">Quantidade</th>
   <th align="right">Total</th>
     <th align="right">Data</th>
       <th align="right">Motivo</th>
  
</tr>

     

<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Responsavel}"/></td>
   <td><c:out value="${row.Cliente}"/></td>
   <td><c:out value="${row.Categoria_r}"/></td>
     <td><c:out value="${row.NomeProduto_r}"/></td>
   <td><c:out value="${row.Preco}"/></td>
   <td><c:out value="${row.Unidade_r}"/></td>
   <td align="right"><c:out value="${row.Quantidade}"/></td>
     <td align="right"><c:out value="${row.Total}"/></td>
       <td align="right"><c:out value="${row.DataHora}"/></td>
         <td align="right"><c:out value="${row.Motivo}"/></td>
  </c:forEach>
  
</tr>
</table>
<p>
<table border="1" width="10%" >

<tr>

  <th align="right">Total</th>
<c:forEach var="row2" items="${result2.rows}">

         <td align="right">R$ <c:out value="${row2.Valor_Total}"/></td>


</c:forEach>
</tr>




</table>
<a href="javascript:window.print()">Imprimir</a>
 
 
 
 
</body>
</html>