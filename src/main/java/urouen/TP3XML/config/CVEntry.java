package urouen.TP3XML.config;

import javax.xml.bind.annotation.XmlRootElement;
import urouen.TP3XML.config.CV;
@XmlRootElement(name = "resume")
public class CVEntry {
	public int idpersonne;
	public String name;
    public String prenom;
    public CV mycv;

    public CVEntry() {  mycv = new CV(); }

    public CVEntry(int id,String nom ,String pren) {
        this.name=nom;
        this.prenom=pren;
        this.idpersonne=id;
    }
    public CVEntry(int id,String nom ,String pren,CV cvv) {
        this.name=nom;
        this.prenom=pren;
        this.idpersonne=id;
        mycv = cvv;
       
    }
    
    public void  addCV(CV cvv)
    {
    	mycv = cvv;
    	//this.mycv.setcv(cvv);
    }
    
    public CV  getCV()
    {
    	return this.mycv;
    }
    
}
