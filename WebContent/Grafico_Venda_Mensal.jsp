<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gr�fico Vendas Mensal </title>
<script language="Javascript">
function refreshpage(){
document.forms.form3.submit();
}
</script>
</head>
<body>
<%response.setIntHeader("Refresh",300);%>
<form id="form3">
<p>
<p>
  <img src="chart3" width="700" height="500" border="0"/>
  <input type="button" onclick="refreshpage()" value="Refresh"/>
</form>
</body>
</html>