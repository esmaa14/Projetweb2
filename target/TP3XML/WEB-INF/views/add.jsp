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
     CVcontroleur mescv = new CVcontroleur();
     
   
    
     String nom = request.getParameter("nom"); 
     String prenom = request.getParameter("prenom");
     String objectif = request.getParameter("objectif");
     String date_naissance = request.getParameter("date_naissance");
     String adresse = request.getParameter("adresse");
     String tel = request.getParameter("tel");
     
     
     
     String entreprise1 = request.getParameter("entreprise1"); 
     String domaine1 = request.getParameter("domaine1");
     String dat_deb1 = request.getParameter("dat_deb1");
     String dat_fin1 = request.getParameter("dat_fin1");
     String description1 = request.getParameter("description1");
    
     
     String entreprise2 = request.getParameter("entreprise2"); 
     String domaine2 = request.getParameter("domaine2");
     String dat_deb2 = request.getParameter("dat_deb2");
     String dat_fin2 = request.getParameter("dat_fin2");
     String description2 = request.getParameter("description2");
    
     String entreprise3 = request.getParameter("entreprise3"); 
     String domaine3 = request.getParameter("domaine3");
     String dat_deb3 = request.getParameter("dat_deb3");
     String dat_fin3 = request.getParameter("dat_fin3");
     String description3 = request.getParameter("description3");
     
     String entreprise4 = request.getParameter("entreprise3"); 
     String domaine4 = request.getParameter("domaine3");
     String dat_deb4 = request.getParameter("dat_deb3");
     String dat_fin4 = request.getParameter("dat_fin3");
     String description4 = request.getParameter("description3");
     
     
     CVcontroleur cnt=new CVcontroleur();
     
     CV c=new CV(date_naissance,adresse,new CVResume(objectif,nom,prenom)) ;
		c.num_tel=tel;
		
     if(entreprise1!=null)
     { 
    	 Experience ex= new Experience(entreprise1,domaine1,dat_deb1,dat_fin1,description1) ;
    	 c.addexperience(ex);
     }
     
     if(entreprise2!=null)
     { 
    	 Experience ex= new Experience(entreprise2,domaine2,dat_deb2,dat_fin2,description2) ;
    	 c.addexperience(ex);
     } 
     
     if(entreprise3!=null)
     { 
    	 Experience ex= new Experience(entreprise3,domaine3,dat_deb3,dat_fin3,description3) ;
    	 c.addexperience(ex);
     } 
     if(entreprise4!=null)
     { 
    	 Experience ex= new Experience(entreprise4,domaine4,dat_deb4,dat_fin4,description4) ;
    	 c.addexperience(ex);
     } 
		cnt.postCVInXML(c);
    
    %>
        <a href="./">Retour a la liste</a>
    </body>
</html>
 