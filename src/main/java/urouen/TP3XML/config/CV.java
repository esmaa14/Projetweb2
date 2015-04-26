package urouen.TP3XML.config;

 
import urouen.TP3XML.config.*;

import javax.annotation.PostConstruct;
import javax.xml.bind.annotation.XmlRootElement;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mahdi esmaa.
 */
@XmlRootElement(name = "CV")
public class CV {
	
    public String dateNaiss;
    public String adresse;
    public String num_tel;
    public	CVResume ident ; 
    //public String idcv;
    public List<Experience> experiences =  new ArrayList<Experience>() ;
    @PostConstruct
    public void CVInit(){
        System.out.print("This will be printed; LOG has already been injected");
    }
    public CV() {}

    public CV(String dateNaiss,String adresse) {
    	this.dateNaiss=dateNaiss;
        this.adresse=adresse; 
    }
    public CV(String dateNaiss,String adresse,CVResume resum) {
    	this.dateNaiss=dateNaiss;
        this.adresse=adresse; 
        this.ident =resum;
    }
    public CV(String dateNaiss,String adresse,CVResume resum,Experience e ) {
    	this.dateNaiss=dateNaiss;
        this.adresse=adresse; 
        this.ident =resum;
        this.experiences.add(e);
    }
     
	public void addident(CVResume res)
    {
    	 this.ident =res;
    	
    }
    public void addexperience(Experience exp)
    {
    	experiences.add(exp);
    	
    }
    public void setcv(CV cv)
    {
    	 this.ident=cv.ident; 
         this.dateNaiss=cv.dateNaiss;
         this.adresse=cv.adresse; 
         this.experiences=cv.experiences;
    }
    public CV getCV(){
	   return this;
   }
    public CVResume getCVResume(){
	   return this.ident;
   }

    public void afficher_cv_detailler()
    {
    	
    	 this.ident.afficher_cv_resum();

         
         System.out.println("date_naissance : " + this.dateNaiss); 
         System.out.println("adresse : " + this.adresse);
         System.out.println("Num tel : " + this.num_tel);
         System.out.println("Experiences");
         
         for(int i=0; i<this.experiences.size();i++)
         {
      	    System.out.println("Experience : "+i);
      	    this.experiences.get(i).afficher_experience();
      	   	
         }
    }


    public void afficher_cv_resum()
    {
    	
    	this.ident.afficher_cv_resum();
         
          
    }
    
    public void generer_cv_xml(int id) throws IOException
    {
    	
    	 String str="<?xml version=\"1.0\" encoding=\"UTF-8\" ?> \n";
    	  str+=" <cur:curriculum xmlns:cur=\"http://dpt-info.com/curriculum\">\n";
    	 
    	 str +="<identite>\n" ;
    	 str +="<nom>"+this.ident.nom+"</nom>\n";
    	 str +="<prenom>"+this.ident.prenom+"</prenom>\n";
    	 str +="<date_naissance>"+this.dateNaiss+"</date_naissance>\n";
    	 str +=" <adresse>"+this.adresse+"</adresse>\n";
    	 str +="<num_tel>"+this.num_tel+"</num_tel>\n";
    	 str +=" </identite>\n";
    	 
    	 str +="<objectif>"+ this.ident.objectif+"</objectif>\n"; 
         
         for(int i=0; i<this.experiences.size();i++)
         {
        	 str +="<experience>\n";
        			str +="<entreprise>"+this.experiences.get(i).entreprise+"</entreprise>\n";
        			str +="<domaine>"+this.experiences.get(i).domaine+"</domaine>\n";
        			str +="<date_debut>"+this.experiences.get(i).date_debut+"</date_debut>\n";
        			str +=" <date_fin>"+this.experiences.get(i).date_fin+"</date_fin>\n";
        			str +=" <description>"+this.experiences.get(i).description+"</description>\n";
        	str +=" </experience>\n";
        			
         }
         	str +=" </cur:curriculum>\n";
         	
         	FileWriter  nomFichier  = null;
            nomFichier= new FileWriter("xmlCV/"+this.ident.nom+"_"+this.ident.prenom+"("+id+").xml",  true)  ;
        
          try{
       
        		nomFichier.write(str);
        	} 
        catch(IOException ex){
	    ex.printStackTrace();
		}
        finally
			{
				if(nomFichier != null)
				{
					nomFichier.close();
				}
			}
         
    }
}
