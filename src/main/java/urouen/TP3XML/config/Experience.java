package urouen.TP3XML.config;

import javax.annotation.PostConstruct;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Experience")
public class Experience {
	public String entreprise;
    public String domaine;
    public String date_debut;
    public String date_fin;
    public String description;
    @PostConstruct
    public void ExperienceInit(){
        System.out.print("This will be printed; LOG has already been injected");
    }
   public Experience(){}
    public Experience(String e, String d, String dd, String df,String des)
    {
    	this.entreprise = e ;
    	this.domaine  = d ;
    	this.date_debut = dd ;
    	this.date_fin = df ;
    	this.description =des ;
    	
    }
    
    public Experience getExperience()
    {
    	return this;
    }
    public void afficher_experience()
    {
    	
    	System.out.println("entreprise : " + this.entreprise); 
  	   	System.out.println("domaine : " + this.domaine); 
        System.out.println("date_debut : " + this.date_debut);
        System.out.println("date_fin : " + this.date_fin);
        System.out.println("description : " + this.description);
    }
}
