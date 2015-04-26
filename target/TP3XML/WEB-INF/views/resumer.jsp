<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <%@ 
    page import="urouen.TP3XML.controller.CVcontroleur"  
    %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link type="text/css" rel="stylesheet" href="style.css" />
        
        <title>Home</title>
    </head>
    <body>
     <% 
     CVcontroleur mescv = new CVcontroleur();
     String id  = request.getParameter("id");
    %>
<table width="500" border="0" cellpadding="4" cellspacing="4" align="center">
  <tr>
    <td colspan="2" align="center" bgcolor="#0099FF"> <strong>Objectif : <%=mescv.getIdpersonneCVInXML(id).ident.objectif  %></strong></td>
  </tr>
  <tr>
    <td width="194">Nom</td>
     
    <td width="169"><%=mescv.getIdpersonneCVInXML(id).ident.nom %></td>
  </tr>
  <tr>
    <td>Prenom</td>
   
    <td><%=mescv.getIdpersonneCVInXML(id).ident.prenom %></td>
  </tr>
  <tr>
    <td colspan="2" align="right"><a href="detail?id=<%=id %>"> Affchier detail</a></td>
  </tr>
  <tr>
    <td colspan="2"><a href="./">Retour a la liste</a></td> 
  </tr>
</table>

</body>
</html>