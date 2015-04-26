<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <%@ 
    page import="urouen.TP3XML.controller.CVcontroleur"  
    %>
    <%@ 
    page import="urouen.TP3XML.config.*"  
    %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link type="text/css" rel="stylesheet" href="style.css" />
        
        <title>Home</title>
    </head>
    <body>
     <% 
    
     String nom = request.getParameter("nom");
     System.out.println ("le mail saisie est : "+nom);
     String prenom = request.getParameter("prenom");
     String objectif = request.getParameter("objectif");
     String date_naissance = request.getParameter("date_naissance");
     String adresse = request.getParameter("adresse");
     String tel = request.getParameter("tel");
     
     CVcontroleur cnt=new CVcontroleur();
     CV c=new CV(date_naissance,adresse,new CVResume(objectif,nom,prenom),new Experience("ttt","yyy","uuuu","oooo","iiii")) ;
		c.num_tel=tel;
		cnt.postCVInXML(c);
    
    %>
        <a href="./WEB-INF/views/home.jsp">Retour a la liste</a>
    </body>
</html>
 