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
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.jdbc.JDBCCategoryDataset;
import java.io.OutputStream;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection; 
public class Grafico_Venda_Diario extends HttpServlet {

private static final long serialVersionUID = 1L;
public Grafico_Venda_Diario() {
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
JDBCCategoryDataset dataset = new JDBCCategoryDataset(connection);
try {
//dataset.executeQuery("SELECT calendar.datefield AS DATE,        IFNULL(SUM(venda.Total),0) AS total_sales FROM venda RIGHT JOIN calendar ON (DATE(venda.DataHora) = calendar.datefield) WHERE (calendar.datefield BETWEEN (SELECT MIN(DATE(DataHora)) FROM venda) AND (SELECT MAX(DATE(DataHora)) FROM venda)) GROUP BY DATE");
dataset.executeQuery("select  DATE_FORMAT(DataHora,'%d') as DataHora, sum(Total) as Total from venda where DataHora BETWEEN NOW() - INTERVAL 30 DAY AND NOW() group by DataHora ORDER BY MONTH(DataHora),DAYOFMONTH(DataHora)");
JFreeChart chart1 = ChartFactory.createBarChart3D("Gráfico de Vendas Diário - Últimos 30 Dias", "Dia", "Valor em R$",
        dataset, PlotOrientation.VERTICAL, true, true, false);
chart1.setBorderPaint(Color.black);
chart1.setBorderStroke(new BasicStroke(5.0f));
chart1.setBorderVisible(true);
if (chart1 != null) {
int width = 700;
int height = 600;
final ChartRenderingInfo info = new ChartRenderingInfo
                               (new StandardEntityCollection());
response.setContentType("image/png");
OutputStream out=response.getOutputStream();
ChartUtilities.writeChartAsPNG(out, chart1, width, height,info);
}
}catch (SQLException e) {
e.printStackTrace();
}
} 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
}
}
