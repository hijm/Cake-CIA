
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CIA DO BOLO</title>
</head>
<body>
<%
// Obtendo os campos do formul�rio


String produto = request.getParameter("produto");
String nome_novo = request.getParameter("nome_novo");

//String dataNascimento = request.getParameter("dataNascimento");


//String bairro = request.getParameter("bairro");
//String numero = request.getParameter("numero");
//String complemento = request.getParameter("complemento");
//String cep = request.getParameter("cep");
//String senha = request.getParameter("senha");
//String confSenha = request.getParameter("ConfSenha");
/* Confirmando os campos obrigat�rios */
/*
if ( email.trim().equals("") || nome.trim().equals("") ||
rua.trim().equals("") || bairro.trim().equals("") ||
numero.trim().equals("") || senha.trim().equals("") ||
confSenha.trim().equals("") ) 
{
String msg = "Os campos marcados com (*) s�o obrigat�rios.";
throw new Exception(msg);
}
*/
/*confirmando se a senha � igual a confirma��o */
/* if ( !senha.equals(confSenha) ) {
String msg = "Senha diferente da Confirma��o";
throw new Exception(msg);
else {
//Colocando o email na sess�o
session.setAttribute("email", email); }
*/
/* Inserindo o novo cliente no banco de dados */



//try {
	//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Class.forName("com.mysql.jdbc.Driver");  
	//String connectionURL = "jdbc:mysql://127.0.0.1/CIABOLO";
    //Connection connection = null; 
    //Class.forName(com.mysql.jdbc.Driver.class.getName());
	

    //Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection ligacao = DriverManager.getConnection("jdbc:mysql://127.0.0.1/CIABOLO","root","root");
    Connection ligacao2 = DriverManager.getConnection("jdbc:mysql://127.0.0.1/CIABOLO","root","root");

    //connection = DriverManager.getConnection(connectionURL, "root", "root");
    //if(!ligacao.isClosed())
         //out.println("Successfully connected to " + "MySQL server using TCP/IP...");
    Statement ps=ligacao.createStatement();
    Statement ps2=ligacao2.createStatement();

   // PreparedStatement ps;
   // ps = ligacao.prepareStatement("insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento) values ('"+email+"','"+nomecontato+"','"+endcontato+"','"+facebook+"','"+fone+"','"+empresa+"','"+dataNascimento+"')");

    //ps = ligacao.prepareStatement(" insert into contatos (email,nomecontato,endcontato,facebook,fone,empresa,dataNascimento)values(?,?,?,?,?,?,?)");
 String atualiza = "update produto set NomeProduto='"+nome_novo+"' where NomeProduto='"+produto+"'";
 String atualiza2 = "update estoque set NomeProduto_e='"+nome_novo+"' where NomeProduto_e='"+produto+"'";
 
 int flag=ps.executeUpdate(atualiza);
 
 if(flag==1)
  
 {
  
 out.println("Nome do produto atualizado com sucesso!");
  
 }
  
 else
  
 {
  
 out.println("Erro, verificar o preenchimento dos campos.");
  
 }
  

int flag2=ps2.executeUpdate(atualiza2);
 
 if(flag2==1)
  
 {
  
 //out.println("Nome do produto atualizado com sucesso!");
  
 }
  
 else
  
 {
  
 //out.println("Erro, verificar o preenchimento dos campos.");
  
 }
 
 response.sendRedirect("Resultado_Atualiza_Valor.jsp");

 

 
//}
 
    /* Setando os atributos do PreparedStatement */
  //ps.setString(1, email);
  //ps.setString(2, nomecontato);
  //ps.setString(3, endcontato);
  //ps.setString(4, facebook);
  //ps.setString(5, fone);
  //ps.setString(6, empresa);
  //ps.setString(7, dataNascimento);

  //ps.setString(7, cep);
  //ps.setString(8, senha);
  /* Executa o comando de atualiza��o do PreparedStatement */
  //ps.executeUpdate();
  //ligacao.close();
//}
//catch(Exception ex){
//    out.println("Unable to connect to database.");
//}



/* Obtendo um PreparedStatement preenchido com o codigo de inserir cliente */

//catch (SQLException e) {
//String msg = e.getMessage() + " : ErrorCode = " + e.getErrorCode();
//throw new Exception(msg);} catch (Exception e) {
//String msg = e.getMessage();
//throw new Exception(msg);}
//Caso o cadastro esteja preenchido corretamente, redireciona � pagina de Produtos
//response.sendRedirect("Entrada.jsp");

%>
</body>
</html>