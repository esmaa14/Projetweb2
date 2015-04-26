package urouen.TP3XML.config;

import javax.annotation.PostConstruct;

public class CVResume {
	public String objectif;
    public String nom;
    public String prenom;
    public String civilite;
    @PostConstruct
    public void CVResumeInit(){
        System.out.print("This will be printed; LOG has already been injected");
    }
    public CVResume(){}
   
    public CVResume(String obj,String name,String prenom ) {
        this.nom=name;
        this.prenom=prenom;
        this.objectif=obj;
        //this.civilite=civ;
    }
    
    public void afficher_cv_resum()
    {
    	
    	 System.out.println("objectif : " + this.objectif); 
         System.out.println("nom : " + this.nom);
         System.out.println("prenom : " + this.prenom);
         
          
    }

}
