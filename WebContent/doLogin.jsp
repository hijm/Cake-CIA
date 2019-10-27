<%@ page language="java" import="java.sql.*" errorPage="" %>
<%

    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CIABOLO","root", "root");
    
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    
    String nomecontato=request.getParameter("nomecontato");
    String password=request.getParameter("password");
    String message="User login successfully ";
    
    try{
    String sqlOption="SELECT * FROM contatos where"
                    +" nomecontato=? and pass=password(?) and admin='1'";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,nomecontato);
    psdoLogin.setString(2,password);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      //String nomecontato=rsdoLogin.getString("nomecontato");
     
      //session.setAttribute("nomecontato",rsdoLogin.getString("nomecontato"));
      //session.setAttribute("iUserType",rsdoLogin.getString("iUserType"));
      //session.setAttribute("iUserLevel",rsdoLogin.getString("iUserLevel"));
      //session.setAttribute("nomecontato",nomecontato);
     
      response.sendRedirect("frames.html");
    }
    else
    {
      message="No user or password matched" ;
      response.sendRedirect("login.jsp?error="+message);
    }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    /// close object and connection
    try{
         if(psdoLogin!=null){
             psdoLogin.close();
         }
         if(rsdoLogin!=null){
             rsdoLogin.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

%>