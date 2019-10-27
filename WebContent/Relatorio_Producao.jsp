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

b {
      font-family: verdana;  
}

td{
      font-family: verdana;  
font-size:13px
}


</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Relatório de Produção</title>
</head>
<body>

<div ><b>Relatório de Produção </b><br><br><br>
</div>
<% 
String periodo_inicio = request.getParameter("periodo_inicio");
String periodo_final = request.getParameter("periodo_final")+" 23:59:59";


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
//resultset = statement.executeQuery("select NomeProduto_v,Unidade_v,Preco,SUM(Quantidade) as Qtd_Total,SUM(Total) as Valor_Total from venda where DataHora>'"+datainicial+"' and DataHora<'"+datafinal+"' group by NomeProduto_v order by Valor_Total");
resultset = statement.executeQuery("select Categoria_p , NomeProduto_p , Unidade_p , FORMAT(Quantidade,2, 'pt_BR') as Quantidade , DATE_FORMAT(DataHora,'%d/%m/%Y') as Data, Usuario, id from producao where DataHora>='"+periodo_inicio+"' and DataHora<='"+periodo_final+"'");


//PreparedStatement statement = ligacao.prepareStatement(select);
//statement.setString(1, datainicial);
//statement.setString(2, datafinal);






// sends the statement to the database server
//statement.executeUpdate(select);
%>
	<form method="post" action="Remove_Producao.jsp" target="Principal">
<p>
<TABLE BORDER="1" width="60%" >
            <TR>
                <TH align="left">Remover</TH>
                <TH align="left">Categoria</TH>
                <TH align="left">Produto</TH>
                <TH align="left">Unidade</TH>
                <TH align="left">Quantidade</TH>
                <TH align="left">Data</TH>
                <TH align="left">Usuário</TH>
                
            </TR>
            
            <% while(resultset.next()){ %>
            <TR>
                <TD><input type="radio" name="chbox" value="<%= resultset.getString(7) %>"/></td>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                
                       <% } %>
                 
            </TR>
         
         
        </TABLE>
 
<input type="submit" name="Enviar" value="Enviar">
<input type="reset" name="Limpar" value="Limpar">
</form>
 <a href="javascript:window.print()">Imprimir</a>         
             <br>
             <br>

  



</body>
</html>
