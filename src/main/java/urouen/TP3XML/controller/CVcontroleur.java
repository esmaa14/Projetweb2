package urouen.TP3XML.controller;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.List;

import urouen.TP3XML.config.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by mahdi esmaa
 */

@Controller
@RequestMapping("/resume")

public class CVcontroleur {
	static public  CVList MYLISTPERONNECV  ; 
	
	int identifiant =0;  
	
	
 
	public CVcontroleur() throws ParserConfigurationException{
		  MYLISTPERONNECV = new CVList(); 
		  this.recupererinfo(); 
	}
	public void recupererinfo() throws ParserConfigurationException{
		 
	 	
 	File rep = new File("xmlCV");
 	 System.out.println ( rep.getAbsolutePath());
		File[] fichiersxml = rep.listFiles(new FilenameFilter(){	
		 
		  public boolean accept(File dir, String name) {
			  identifiant++;
			 String num =name.split("\\(", -1)[1].split("\\).xml", -1)[0];
			 try {
				CVEntry p=recup1cv(num);
				MYLISTPERONNECV.addPersonne(p);
			} catch (ParserConfigurationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  return name.endsWith(".xml");
		  }
		});
		  
	}
	
	/*
	public CVcontroleur()
	{
   	   CV c=new CV("14/07/1984","adrses",new CVResume("ttt","ttt","ttt"),new Experience("ttt","yyy","uuuu","oooo","iiii")) ;
		MYLISTPERONNECV.addPersonne(new CVEntry(2, "n", "nn", c));  
		  
	}
	 */
	@RequestMapping( value="",method = RequestMethod.GET)
    public @ResponseBody
     CVList getMYLISTInXML() 
    {
    	 
        return MYLISTPERONNECV;

    }

    //get avec id
    @RequestMapping( value="{id}",method = RequestMethod.GET)
    public @ResponseBody
    CV getIdpersonneCVInXML(@PathVariable String id) 
    {
         
        int i=Integer.parseInt(id);
     
        return MYLISTPERONNECV.getpersonneposition(i).getCV();

    }
 
    @RequestMapping( method = RequestMethod.POST, consumes="application/xml")
    public int postCVInXML(@RequestBody CV cvv ) throws IOException {
    	 
    	//System.out.println("identifiant" + identifiant);
    	MYLISTPERONNECV.addPersonne( new CVEntry(identifiant,cvv.ident.nom ,cvv.ident.prenom,cvv));
    	cvv.generer_cv_xml(identifiant);
    	identifiant++;
    	return identifiant;
    }
  
    public void affcier_list_cv()
    {
    	 
    	for(int i=0;i<MYLISTPERONNECV.taillelist();i++){ 
    		 
    	System.out.println(MYLISTPERONNECV.getpersonneposition(i).getCV().ident.objectif+ " id: " +  MYLISTPERONNECV.getpersonneposition(i).idpersonne 	);// on choisit la sous chaine - les 5 derniers caracteres ".java"
    			 
    	}
    }
    
    public void affichercvdetailler(String id)
    {
    	//System.out.println("Detail: cv  " + id); 
        getIdpersonneCVInXML( id).afficher_cv_detailler();;
   	  
    }
   
    public void affichercvresume(String id)
    {
    	// System.out.println("resum cv  " + id); 
    	getIdpersonneCVInXML( id).afficher_cv_resum();
    	 
     
    }
	public CVEntry  recup1cv(String id) throws ParserConfigurationException
    {
		//File dir = new File ("xmlCV/"); 
				 
		//dir.mkdirs();

  	     CV cv = null ;
  	     CVEntry personne = new CVEntry();//(id, cv.ident.nom, cv.ident.prenom, cv
    	File repertoire = new File("xmlCV");
    	String [] listefichiers; 
    	listefichiers=repertoire.list();
    	for(int i=0;i<listefichiers.length;i++)
    	{
    		if(listefichiers[i].endsWith(".xml")==true)
    		{
    			String nom = listefichiers[i];
    			String id_fichier =nom.split("\\(", -1)[1].split("\\).xml", -1)[0];
    			 if( id_fichier.endsWith(id) && id_fichier.startsWith(id))
    			{ 
    			 String chemin = "xmlCV/"+nom;
    			 DomReadXMLFile dm = new DomReadXMLFile(chemin);
    			   cv=   dm.recupererCV();
    			    int idd=Integer.parseInt(id);
    			    personne.idpersonne=idd; 
    			}
    		
    		}
    	}
    	 
    	personne.name=cv.ident.nom;
    	personne.prenom=cv.ident.prenom;
    	personne.addCV(cv);
    	return personne;
    
    }
}




 