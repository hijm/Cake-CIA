<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page errorPage="Erro.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page  import="java.sql.Connection.*" %> 
<%@ page    import="java.sql.DriverManager.*" %> 
<%@ page    import="java.sql.PreparedStatement.*" %> 
<%@ page     import="java.sql.ResultSet.*" %> 
<%@ page     import="java.sql.SQLException.*" %> 
 <%@ page    import="java.sql.Statement.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%ResultSet resultset =null;%>
<%ResultSet resultset2 =null;%>
<%ResultSet resultset3 =null;%>

<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CIA DO BOLO</title>
</head>
<body>

<div>
</div>
<% 
String cliente = request.getParameter("cliente");


Connection conn = null; // connection to the database
String message = null;  // message will be sent back to client
//try {
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Class.forName("com.mysql.jdbc.Driver");  
//String connectionURL = "jdbc:mysql://127.0.0.1/CIABOLO";
//Connection connection = null; 
//Class.forName(com.mysql.jdbc.Driver.class.getName());


//Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection ligacao = DriverManager.getConnection("jdbc:mysql://127.0.0.1/CIABOLO","root","root");
//connection = DriverManager.getConnection(connectionURL, "root", "root");
//if(!ligacao.isClosed())
 //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
Statement statement=ligacao.createStatement();
Statement statement2=ligacao.createStatement();
Statement statement3=ligacao.createStatement();

// PreparedStatement ps;
// ps = ligacao.prepareStatement("insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento) values ('"+email+"','"+nomecontato+"','"+endcontato+"','"+facebook+"','"+fone+"','"+empresa+"','"+dataNascimento+"')");

//ps = ligacao.prepareStatement(" insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento)values(?,?,?,?,?,?,?)");
//String select = "select Categoria_v,NomeProduto_v,Preco,Unidade_v,SUM(Quantidade) as Qtd_Total,SUM(Total) as Valor_Total from venda where DataHora>'"+datainicial+"' and DataHora<'"+datafinal+"' group by NomeProduto_v";

//Statement statement = ligacao.createStatement() ;
//resultset = statement.executeQuery("select Cliente, SUM(Total-Valor_Recebido) from venda where Cliente='"+cliente+"' group by Cliente " );
resultset2 = statement2.executeQuery("select Cliente, FORMAT(Valor_Devido,2, 'pt_BR') as Valor_Devido from valor_devido where Valor_Devido>0");
resultset3 = statement3.executeQuery("select Cliente, FORMAT(Valor_Devido,2, 'pt_BR') as Valor_Devido from valor_devido where Cliente='"+cliente+"'");


//PreparedStatement statement = ligacao.prepareStatement(select);
//statement.setString(1, datainicial);
//statement.setString(2, datafinal);






// sends the statement to the database server
//statement.executeUpdate(select);
%>

<b>Relatório de Vendas Pendentes
<p>    
<TABLE BORDER="1" > 
            <TR>
                <TH align="left">Cliente</TH>
                <TH align="right">Valor Devido</TH>
               
                
             
                
            </TR>
            
            <% while(resultset3.next()){ %>
            <TR>
                <TD> <%= resultset3.getString(1) %></td>
                <TD align="right"> <%= resultset3.getString(2) %></TD>
               
                
           
                       <% } %>
                 
            </TR>
         
         
        </TABLE>
 

 
 <p>
 <p>
 
 <TABLE BORDER="1">
            <TR>
                <TH>Cliente</TH>
         
                <TH align="right">Valor Devido</TH>
                
             
                
            </TR>
            
            <% while(resultset2.next()){ %>
            <TR>
                <TD> <%= resultset2.getString(1) %></td>
                <TD align="right"> <%= resultset2.getString(2) %></TD>
            
           
                       <% } %>
                 
            </TR>
         
         
        </TABLE>
          
             <br>
             <br>

  


</body>
</html>
