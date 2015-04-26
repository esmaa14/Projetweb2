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
<table width="90%" border="0" cellpadding="4" cellspacing="4" align="center">
  <tr>
    <td colspan="2" align="center" bgcolor="#0099FF"> <strong>Objectif : <%=mescv.getIdpersonneCVInXML(id).ident.objectif %></strong></td>
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
    <td width="194">Date Naissance</td> 
    <td width="169"><%=mescv.getIdpersonneCVInXML(id).dateNaiss %></td>
  </tr>
  <tr>
    <td>Adresse</td> 
    <td><%=mescv.getIdpersonneCVInXML(id).adresse %></td>
  </tr>
  
  <tr>
    <td width="194">Tel</td> 
    <td width="169"><%=mescv.getIdpersonneCVInXML(id).num_tel %></td>
  </tr>
  <tr>
    <td>Experience </td> 
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="194">Experiences:</td> 
    <td width="169">&nbsp;</td>
  </tr>
  <% 
  for(int i=0;i<mescv.getIdpersonneCVInXML(id).experiences.size();i++){  
  %>
  <tr>
    <td width="194">Entreprise</td> 
    <td width="169"><%=mescv.getIdpersonneCVInXML(id).experiences.get(i).entreprise%></td>
  </tr>
  <tr>
    <td>Domaine</td> 
    <td><%=mescv.getIdpersonneCVInXML(id).experiences.get(i).domaine%></td>
  </tr>
  <tr>
    <td width="194">Date debut</td> 
    <td width="169"><%=mescv.getIdpersonneCVInXML(id).experiences.get(i).date_debut%></td>
  </tr>
  <tr>
    <td>DateFin</td> 
    <td><%=mescv.getIdpersonneCVInXML(id).experiences.get(i).date_fin%></td>
  </tr>
  <tr>
    <td>description</td> 
    <td><%=mescv.getIdpersonneCVInXML(id).experiences.get(i).description%></td>
  </tr>
   <%
    }
   %>
  <tr>
    <td colspan="2" align="right"><a href="./WEB-INF/views/home.jsp">Retour a la liste</a></td> 
  </tr>
</table>

</body>
</html>