<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title></title>
</head>
<style>
 p {
    color: black;
        font-family: verdana;  
font-size:14px
    }
    
 p2  {
    color: red;
        font-family: verdana;  
font-size:14px
    } 
 
 table {
    border-collapse: collapse;
    
}

 th {
background-color: #E0E0E0;
    color: black;
    font-style: italic;
    font-size: 14px; 
    font-weight:bold; line-height: 18px
    }

table, td , th{
    border: 1px  black;
    font-style: normal;
    padding: 8px;
    
}   
</style>
<body>
<body style="background:#E0E0E0">
<%
   // Set refresh, autoload time as 5 seconds
   response.setIntHeader("Refresh", 60);
   // Get current time
  
%>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://127.0.0.1/CIABOLO"
     user="root"  password="root"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT count(Valor_Devido) AS CONTA from valor_devido  where Valor_Devido>1;
</sql:query>
 
 <sql:query dataSource="${snapshot}" var="result2">
SELECT count(Quantidade) AS CONTA2 from estoque  where Quantidade<0;
</sql:query>
 
<sql:query dataSource="${snapshot}" var="result3">            
select sum(Valor_Devido) as VD from valor_devido where Valor_Devido>0;            
</sql:query>


            
<TABLE >
                
 
<c:forEach var="row" items="${result.rows}">
<c:choose>
  <c:when test="${row.CONTA>0}">
  <TH>Vendas Pendentes: <span style="color:red; font-size: 14px; font-weight:bold; line-height: 18px;"><c:out value="${row.CONTA}"/></span></TH>
    </c:when>
  
  <c:otherwise>
    <TH>Vendas Pendentes: <span style="color:blue;font-size: 14px; line-height: 18px;"><c:out value="${row.CONTA}"/></span></TH>
 
 </c:otherwise>
</c:choose>
</c:forEach>


 
<c:forEach var="row3" items="${result3.rows}">
<c:choose>
  <c:when test="${row3.VD>0}">
  <TH> Total Devido: <span style="color:red; font-size: 14px; font-weight:bold; line-height: 18px;"><c:out value="${row3.VD}"/></span></TH>
    </c:when>
  
  <c:otherwise>
    <TH> Total Devido: <span style="color:blue;font-size: 14px; line-height: 18px;"><c:out value="${row3.VD}"/></span></TH>
 
 </c:otherwise>
</c:choose>
</c:forEach>


 
<c:forEach var="row2" items="${result2.rows}">
<c:choose>
  <c:when test="${row2.CONTA2>0}">
  <TH> Estoque Negativo: <span style="color:red; font-size: 14px; font-weight:bold; line-height: 18px;"><c:out value="${row2.CONTA2}"/></span></TH>
    </c:when>
  
  <c:otherwise>
    <TH> Estoque Negativo: <span style="color:blue;font-size: 14px; line-height: 18px;"><c:out value="${row2.CONTA2}"/></span></TH>
 
 </c:otherwise>
</c:choose>
</c:forEach>




</TABLE>



</body>
</html>