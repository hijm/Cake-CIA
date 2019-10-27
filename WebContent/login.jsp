<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.String.*" %>	

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
<body>
<input type="hidden" name="ipaddress" value="<%=request.getRemoteAddr()%>"/> 
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String IP = request.getParameter("IP");

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CIABOLO",
            "root", "root");


    Statement st = con.createStatement();

    ResultSet rs;

    rs = st.executeQuery("select * from contatos where nomecontato='" + userid + "' and pass='" + pwd + "' and admin='1'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("frames.html");
    } else {
        out.println("Password Inválido<a href='index.jsp'>Tente novamente</a>");
        
        
    }
%>

</html></body>
