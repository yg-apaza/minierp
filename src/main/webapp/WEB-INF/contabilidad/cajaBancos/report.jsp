<%@ page language = "java" import ="java.io.*,jxl.*,jxl.write.Label,jxl.write.WritableCell,jxl.write.WritableSheet,jxl.write.WritableWorkbook,jxl.write.biff.File,jxl.write.WriteException,jxl.write.biff.RowsExceededException" %>
<html>
<head>
</head>
    <body>
 
<%
 
    String szOperation=null;
    szOperation = request.getParameter("txtCallFlag");
 
    if(szOperation.equals("WORD"))
    { 
        out.println("WORD");
        try {
                response.setContentType("application/vnd.ms-word");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.doc");
 
            }catch(Exception e){
        out.println("Exeception while creating word doc"+e);
        }
 
    }
    else if(szOperation.equals("EXCEL")) 
        { 
       out.println("EXCEL");
            try {
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "attachment; filename=sampleName.xls");
                        WritableWorkbook writableWorkbook = Workbook.createWorkbook(response.getOutputStream());
                        WritableSheet writableSheet = writableWorkbook.createSheet("Demo", 0);
                        writableSheet.addCell(new Label(0, 0, "Hello World"));
                        writableWorkbook.write();
                        writableWorkbook.close();
        } catch (RowsExceededException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        } catch (WriteException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
 
    }
    else if(szOperation.equals("PDF"))
    {
        out.println("PDF");
        try {
                 
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.pdf");
 
                //The following fixed the problem for me.
                //response.setHeader("Cache-Control", "max-age=60");
                //Another possible solution is to change the content type from "application/pdf" to "application/octet-stream". 
 
    }
    catch(Exception e){
            out.println("Exeception while creating PDF"+e);
    }
 
}
  //aded
    else if (szOperation.equals("TEXT"))
    {
    out.println("vaibhav4");    
        try {
                response.setContentType("application/text");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.txt");
            }
    catch(Exception e){
            out.println("Exeception while creating PDF"+e);
    }
 
 
    }
 
    else if (szOperation.equals("CSV"))
    {
    out.println("vaibhav5");    
      
 
        try {
                response.setContentType("APPLICATION/OCTET-STREAM");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.csv");
    }
    catch(Exception e){
            out.println("Exeception while creating PDF"+e);
    }
     
    }
     
    else if (szOperation.equals("XML"))
    {
    out.println("vaibhav5");    
      
 
        try {
                response.setContentType("text/xml");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.xml");
    }
    catch(Exception e){
            out.println("Exeception while creating PDF"+e);
    }
    }
 
else if (szOperation.equals("RPT"))
    {
    out.println("vaibhav5");    
      
 
        try {
                response.setContentType("text/rpt");
                response.setHeader("Content-Disposition", "attachment; filename=sampleName.rpt");
    }
    catch(Exception e){
            out.println("Exeception while creating PDF"+e);
    }
 
    }
 
%>