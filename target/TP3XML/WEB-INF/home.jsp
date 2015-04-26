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
    
    %>
        <table width="500" border="1" align="center">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><a href="./WEB-INF/views/inscription.jsp"> ajouter un cv</a></td>
  </tr>
  <tr>
    <td colspan="3"><em><strong><center>List CV</center></strong></em></td>
  </tr>
  <tr>
    <td>titre</td>
    <td>Afficher resum  </td>
    <td>Afficher detail  </td>
  </tr>
  <% 
  for(int i=0;i<mescv.MYLISTPERONNECV.taillelist();i++){  
  %>
  <tr>
    <td>  <%=mescv.MYLISTPERONNECV.getpersonneposition(i).getCV().ident.objectif  %> </td>
    <td><a href="./WEB-INF/views/resume.jsp?id=<%=mescv.MYLISTPERONNECV.getpersonneposition(i).idpersonne  %>">Afficher resum </a> </td>
    <td><a href="./WEB-INF/views/detail.jsp?id=<%=mescv.MYLISTPERONNECV.getpersonneposition(i).idpersonne %>"> Afficher detail</a> </td>
     
  </tr>
   <%
    }
   %>
</table>
    </body>
</html>
 