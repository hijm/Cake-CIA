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
     <%@ page    import="java.text.NumberFormat.*" %>
   
 
   
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

<div ><b>Relatório de Vendas Geral </b><br><br><br>
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
Connection ligacao = DriverManager.getConnection("jdbc:mysql://127.0.0.1/CIABOLO","root","root");
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
resultset = statement.executeQuery("select VendaId,Cliente,Categoria_v,NomeProduto_v, FORMAT(Preco,2, 'pt_BR') as Preco,Unidade_v,FORMAT(Quantidade,2, 'pt_BR') Quantidade,FORMAT(Total,2, 'pt_BR') Total,FORMAT(Valor_Recebido,2, 'pt_BR') as Valor_Recebido, DATE_FORMAT(DataHora,'%d/%m/%Y') as Data,FORMAT(COALESCE((select Preco from produto where NomeProduto='Calda' and venda.calda='1'),0),2, 'pt_BR'),FORMAT(COALESCE((select Preco from produto where NomeProduto='Entrega' and venda.entrega='1'),0),2, 'pt_BR') from venda where DataHora>='"+datainicial+"' and DataHora<='"+datafinal+"' order by Cliente");



//PreparedStatement statement = ligacao.prepareStatement(select);
//statement.setString(1, datainicial);
//statement.setString(2, datafinal);






// sends the statement to the database server
//statement.executeUpdate(select);
%>


<TABLE BORDER="1" width="90%">
            <TR>
            	<TH align="left">Remover</TH>
                <TH align="left">Venda Id</TH>
                <TH align="left">Cliente</TH>
                <TH align="left">Categoria</TH>
                <TH align="left">Produto</TH>
                <TH align="right">Preço</TH>
                 <TH align="right">Unidade</TH>
                <TH align="right">Quantidade</TH>
                  <TH align="right">Calda</TH>
                <TH align="right">Entrega</TH>
                <TH align="right">Total</TH>
                <TH align="right">Valor Recebido</TH>
                <TH align="right">Data</TH>
              

                
            </TR>
            

            
		<form method="post" action="Remove_Venda.jsp" target="Principal">
            <% while(resultset.next()){ %>
            
            <TR>
                <TD><input type="radio" name="chbox" value="<%= resultset.getString(1) %>"/></td>
                  <TD> <%= resultset.getString(1) %></td> 
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD align="right"> <%= resultset.getString(5) %></TD>
                 <TD align="right"> <%= resultset.getString(6) %></td>
                <TD align="right"> <%= resultset.getString(7) %></TD>
                  <TD align="right"> <%= resultset.getString(11) %></TD>
                <TD align="right"> <%= resultset.getString(12) %></TD>
                <TD align="right"> <%= resultset.getString(8) %></TD>
                <TD align="right"> <%= resultset.getString(9) %></TD>
                <TD> <%= resultset.getString(10) %></TD>
                
                <% } %>
                 
            </TR>
         
         
        </TABLE>
 
          
             <br>
             <br>
<p>
 <input type="submit" name="Enviar" value="Enviar">
<input type="reset" name="Limpar" value="Limpar">


</form>
<a href="javascript:window.print()">Imprimir</a>
</body>
</html>
