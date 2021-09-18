<%@page import="java.util.ArrayList"%>
<%@page import="Dbcon.FilePath"%>
<%@page import="Dbcon.DbQuery"%>

<%@page import="java.sql.Statement"%>
x<%@page import="java.sql.Connection"%>

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
String sid="", photo="";
String fle=null;
iter=upload.getItemIterator(request);
while(iter.hasNext())
{
    FileItemStream item=iter.next();
    String nam=item.getFieldName();
    InputStream stream=item.openStream();
    if(item.isFormField())
    {
        String str=Streams.asString(stream);
        if(nam.equals("photo_id"))
        {
            sid=str;
        }

    }
    else
    {

        if(item.getName()!="")
        {
            if(nam.equals("photo")){
                String f1=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
                String ext[]=f1.split("\\.");
                photo=sid+"."+ext[ext.length-1];
                File f=new File(FilePath.Path+photo);
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

DbQuery db=new DbQuery();
int i=db.addPhoto(sid, photo);


if(i>0)
{

    %>
    <script>
        alert("Successfully Updated...!!");
        window.location="studentView.jsp";
    </script>

<%
}
}catch(Exception e)
{
    out.print(e.toString());
}
%>
