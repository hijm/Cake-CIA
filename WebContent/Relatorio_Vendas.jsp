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
<title>Relatório de Vendas</title>
</head>
<body>

<div ><b>Relatório de Vendas </b><br><br><br>
</div>
<% 
String datainicial = request.getParameter("datainicial");
String datafinal = request.getParameter("datafinal")+" 23:59:59";


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

// PreparedStatement ps;
// ps = ligacao.prepareStatement("insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento) values ('"+email+"','"+nomecontato+"','"+endcontato+"','"+facebook+"','"+fone+"','"+empresa+"','"+dataNascimento+"')");

//ps = ligacao.prepareStatement(" insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento)values(?,?,?,?,?,?,?)");
//String select = "select Categoria_v,NomeProduto_v,Preco,Unidade_v,SUM(Quantidade) as Qtd_Total,SUM(Total) as Valor_Total from venda where DataHora>'"+datainicial+"' and DataHora<'"+datafinal+"' group by NomeProduto_v";

//Statement statement = ligacao.createStatement() ;
resultset = statement.executeQuery("select NomeProduto_v,Unidade_v,FORMAT(Preco,2, 'pt_BR') as Preco,FORMAT(SUM(Quantidade),2, 'pt_BR') as Qtd_Total,FORMAT(SUM(Total),2, 'pt_BR') as Valor_Total from venda where DataHora>='"+datainicial+"' and DataHora<='"+datafinal+"' group by NomeProduto_v");
//resultset2 = statement2.executeQuery("select FORMAT(SUM(Total),2, 'pt_BR')  as Valor_Total from venda where DataHora>='"+datainicial+"' and DataHora<='"+datafinal+"'");
resultset2 = statement2.executeQuery("Select Concat('R$ ', Replace  (Replace  (Replace  (Format(SUM(Total),2), '.', '|'), ',','.'), '|', ',')) from venda where DataHora>='"+datainicial+"' and DataHora<='"+datafinal+"'");


//PreparedStatement statement = ligacao.prepareStatement(select);
//statement.setString(1, datainicial);
//statement.setString(2, datafinal);






// sends the statement to the database server
//statement.executeUpdate(select);
%>


<TABLE BORDER="1" width="50%">
            <TR>
                <TH align="left">Produto</TH>
                <TH align="right">Preço</TH>
                <TH align="right">Quantidade Total</TH>
                <TH align="right">Unidade</TH>
                <TH align="right">Valor Total</TH>
                
            </TR>
            
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD align="right"> <%= resultset.getString(3) %></TD>
                <TD align="right"> <%= resultset.getString(4) %></TD>
                 <TD align="right"> <%= resultset.getString(2) %></TD>
                
                <TD align="right"> <%= resultset.getString(5) %></TD>
                       <% } %>
                 
            </TR>
         
         
        </TABLE>
 
          
             <br>
             <br>

    
<TABLE BORDER="1">        
        <TR>
                <TH align="right">Grande Total</TH>
                
            </TR>
             <% while(resultset2.next()){ %>
            <TR>
              
                <TD align="right"> <%= resultset2.getString(1) %></TD>
                
            </TR>
            <% } %>
        </TABLE>

<a href="javascript:window.print()">Imprimir</a>

</body>
</html>
