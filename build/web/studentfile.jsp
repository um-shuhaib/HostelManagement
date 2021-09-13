<%@page import="java.util.ArrayList"%>
<%@page import="DbCon.FilePath"%>
<%@page import="DbCon.DbQueries"%>
<%-- 
    Document   : uploadfile
    Created on : 20 Jun, 2015, 4:12:45 PM
    Author     : nidhin lal
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
ServletFileUpload upload=new ServletFileUpload();
FileItemIterator iter=null;
String sname="",categ="",adr="",age="",mob="",email="",exp="",desc="",lic="",year="",photo="";
String fle=null;
ArrayList<String> sports=new ArrayList<String>();
iter=upload.getItemIterator(request);
while(iter.hasNext())
{
    FileItemStream item=iter.next();
    String nam=item.getFieldName();
    InputStream stream=item.openStream();
    if(item.isFormField())
    {
        String str=Streams.asString(stream);
        if(nam.equals("sname"))
        {
            sname=str;
        }
        else if(nam.equals("categ"))
        {
            categ=str;
        }
        else if(nam.equals("adr"))
        {
                adr=str;
        }
        else if(nam.equals("age"))
        {
            age=str;
        }
        if(nam.equals("mob"))
        {
            mob=str;
        }
        if(nam.equals("email"))
        {
            email=str;
        }
        if(nam.equals("exp"))
        {
            exp=str;
        }
        if(nam.equals("desc"))
        {
            desc=str;
        }
        if(nam.equals("lic"))
        {
            lic=str;
        }
        if(nam.equals("year"))
        {
            year=str;
        }
       
    }
    else
    {
       
        if(item.getName()!="")
        {
            if(nam.equals("photo")){
                String f1=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
                String ext[]=f1.split("\\.");
                photo=sname+"."+ext[ext.length-1];
                File f=new File(FilePath.staffPhoto+photo);
                if(!f.exists())
                {
                    f.createNewFile();
                }
                FileOutputStream fos=new FileOutputStream(f);
                int ch;
                while((ch=stream.read())!=-1)
                {
                    fos.write(ch);
                }
                fos.close();
            }
        }
}
}

DbQueries db=new DbQueries();
int i=db.addStaff(sname, age, categ, adr, mob, email, exp, desc, lic, year, photo);


if(i>0)
{

    %>
    <script>alert("Successfully Entered...!!");
    window.location="StaffRegistration.jsp";</script>
   
<%
}else{
%>
    <script>alert("This email id is already registered...!!");
    window.location="StaffRegistration.jsp";</script>
   
<%
}


}catch(Exception e)
{
    out.print(e.toString());
}
%>