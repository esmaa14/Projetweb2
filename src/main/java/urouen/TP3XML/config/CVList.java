package urouen.TP3XML.config;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import java.util.ArrayList;
import java.util.List;
import urouen.TP3XML.config.*;

/**
 * Created by mahdi esmaa.
 */
  
@XmlRootElement(name = "resume")

public class CVList {

    List<CVEntry> listepersonne = new ArrayList<CVEntry>() ;
    
public CVList(){
       //listepersonne = new ArrayList<CVEntry>();
    	 //CV c=new CV("14/07/1984","adrses",new CVResume("test","test","test"),new Experience("ttt","yyy","uuuu","oooo","iiii")) ;
    	   
    	 //listepersonne.add(new CVEntry(1,"t1","i",c))  ;
       }
@XmlElement
    public void setlistepersonne(List<CVEntry> listepercv) {
        this.listepersonne = listepercv;
    }

    public void addPersonne(CVEntry p) {
        this.listepersonne.add(p) ;
    }
    
    public List<CVEntry> getlistepersonne() {
        return listepersonne;
    }

    
    public int taillelist(){
    	 return listepersonne.size();
    	   
  
      }
    public CVEntry getpersonneposition(int i){
   	 return listepersonne.get(i);
   	   
 
     }

}
