<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resumer Cv</title>
<%@ 
    page import="urouen.TP3XML.controller.CVcontroleur"  
    %>
</head>

<body>
 <% 
 String id  = request.getParameter("id");
     
     CVcontroleur mescv = new CVcontroleur();
    
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
    <td colspan="2" align="right"><a href="./WEB-INF/views/detail.jsp?id=<%=id %>"> Affchier detail</a></td>
  </tr>
  <tr>
    <td colspan="2"><a href="./WEB-INF/views/home.jsp">Retour a la liste</a></td> 
  </tr>
</table>

</body>
</html>