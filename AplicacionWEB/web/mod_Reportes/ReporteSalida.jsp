
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="javax.servlet.ServletResponse"%>
<%@include file="Conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>       
        <%

        try {
        File reportfile = new File (application.getRealPath("mod_Reportes/Salidas.jasper"));        
        //Map<String,Object> parameter = new HashMap<String,Object>();   
        
        //String valor = request.getParameter("txtparametro");
        //parameter.put("mar",new String(valor));     
        
        byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), null, con);        
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes,0,bytes.length);        
        outputstream.flush();
        outputstream.close();
                } catch (Exception e) {
            e.printStackTrace();
        }
        %>        
    </body>
</html>
