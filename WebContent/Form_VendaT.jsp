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
  <%@ page    import="java.sql.Date.*" %>
  <%@ page    import="java.text.SimpleDateFormat.*" %>
   <%@ page    import="java.text.DateFormat.*" %>
    <%@ page    import="java.util.Date.*" %>
   
 
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%ResultSet resultset =null;%>

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Relatório de Vendas Geral</title>
</head>
<body>

<div ><b>Venda Múltipla </b><br><br><br>
</div>
<% 
String datainicial = request.getParameter("datainicial");
String datafinal = request.getParameter("datafinal")+" 23:59:59";
//DateFormat df = new SimpleDateFormat("dd-MM-yyyy");  
//df.setLenient(false);  


Connection conn = null; // connection to the database
String message = null;  // message will be sent back to client
//try {
//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Class.forName("com.mysql.jdbc.Driver");  
//String connectionURL = "jdbc:mysql://127.0.0.1/CIABOLO";
//Connection connection = null; 
//Class.forName(com.mysql.jdbc.Driver.class.getName());


//Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection ligacao = DriverManager.getConnection("jdbc:mysql://127.0.0.1/TESTE","root","root");
//connection = DriverManager.getConnection(connectionURL, "root", "root");
//if(!ligacao.isClosed())
 //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
Statement statement=ligacao.createStatement();
//Statement statement2=ligacao.createStatement();

// PreparedStatement ps;
// ps = ligacao.prepareStatement("insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento) values ('"+email+"','"+nomecontato+"','"+endcontato+"','"+facebook+"','"+fone+"','"+empresa+"','"+dataNascimento+"')");

//ps = ligacao.prepareStatement(" insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento)values(?,?,?,?,?,?,?)");
//String select = "select Categoria_v,NomeProduto_v,Preco,Unidade_v,SUM(Quantidade) as Qtd_Total,SUM(Total) as Valor_Total from venda where DataHora>'"+datainicial+"' and DataHora<'"+datafinal+"' group by NomeProduto_v";

//Statement statement = ligacao.createStatement() ;
resultset = statement.executeQuery("select * from produtoT");



//PreparedStatement statement = ligacao.prepareStatement(select);
//statement.setString(1, datainicial);
//statement.setString(2, datafinal);






// sends the statement to the database server
//statement.executeUpdate(select);
%>
		<form method="post" action="Venda_EnginetT.jsp" target="Principal">
 <TH align="left">Cliente</TH>
    <TD><input type="text" name="cliente" size="10" maxlength="10"></td> 
               <p>

<TABLE BORDER="1" width="70%">
 
   
            <TR>
            	<TH align="left">Adicionar</TH>
             
                <TH align="left">Categoria</TH>
                <TH align="left" size="20">Produto</TH>
                <TH align="left">Preço</TH>
                 <TH align="left">Unidade</TH>
                <TH align="left">Quantidade</TH>
                <TH align="left">Total</TH>
              
                    </TR>
         
            <% while(resultset.next()){ %>
            
            <TR>
                <TD><input type="checkbox" name="chbox" value="<%= resultset.getString(2) %>"/></td>
                 <TD> <%= resultset.getString(1) %></td> 

                 <TD> <%= resultset.getString(2) %></td> 
                  <TD> <%= resultset.getString(3) %></td> 
                  <TD> <%= resultset.getString(4) %></td> 
				<td width="15%"><input type="text" name="quantidade" size="10" maxlength="10"></td>
				<td width="15%"><input type="text" name="total" size="10" maxlength="10"></td>
 
                
                
        
                
                <% } %>
                 
            </TR>
            <p>
   
         
        </TABLE>
        <p>
	<TH align="left">Data</TH>    
    <td width="15%"><input type="text" name="data" size="10" maxlength="10"></td>
     
    <TH align="left">Valor Recebido</TH>  
      <td width="15%"><input type="text" name="valor_recebido" size="10" maxlength="10"></td>
            
          
             <br>
             <br>
<p>
 <input type="submit" name="Enviar" value="Enviar">
<input type="reset" name="Limpar" value="Limpar">


</form>
<a href="javascript:window.print()">Imprimir</a>
</body>
</html>
