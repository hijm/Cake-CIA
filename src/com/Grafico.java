package com; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.BasicStroke;
import java.awt.Color;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.data.jdbc.JDBCPieDataset;
import java.io.OutputStream;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection; 
public class Grafico extends HttpServlet {

private static final long serialVersionUID = 1L;
public Grafico() {
// TODO Auto-generated constructor stub
} 
protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
try {
connection=
DriverManager.getConnection("jdbc:mysql://localhost/CIABOLO?user=root&password=root&useUnicode=true&characterEncoding=utf-8");
} catch (SQLException e) {
e.printStackTrace();
}
}catch (InstantiationException e) {
e.printStackTrace();
} catch (IllegalAccessException e) {
e.printStackTrace();
} 
catch (ClassNotFoundException e) {
e.printStackTrace();
}
JDBCPieDataset dataset = new JDBCPieDataset(connection);
try {
dataset.executeQuery("select NomeProduto_v, sum(Total)  as Total  from venda where DataHora BETWEEN NOW() - INTERVAL 30 DAY AND NOW() group by NomeProduto_v order by Total;");
JFreeChart chart = ChartFactory.createPieChart
         ("Gráfico Vendas - Produto por Valor - Últimos 30 Dias", dataset, true, true, false);
chart.setBorderPaint(Color.black);
chart.setBorderStroke(new BasicStroke(5.0f));
chart.setBorderVisible(true);
if (chart != null) {
int width = 700;
int height = 600;
final ChartRenderingInfo info = new ChartRenderingInfo
                               (new StandardEntityCollection());
response.setContentType("image/png");
OutputStream out=response.getOutputStream();
ChartUtilities.writeChartAsPNG(out, chart, width, height,info);
}
}catch (SQLException e) {
e.printStackTrace();
}
} 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
}
}
