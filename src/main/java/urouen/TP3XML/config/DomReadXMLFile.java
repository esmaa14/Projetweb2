package urouen.TP3XML.config;

        import javax.annotation.PostConstruct;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import urouen.TP3XML.config.*;

import java.io.File;
import java.security.PublicKey;

public class DomReadXMLFile {
	
 
public String  chemin;
 
 
 @PostConstruct
 public void DomReadXMLFileInit(){
     System.out.println("This will be printed; LOG has already been injected");
 }
 
public DomReadXMLFile(String chemi   ) throws ParserConfigurationException{
	
	  chemin=chemi ;
	
	  
}
    public   CV recupererCV() {
 
    	CV cv=new CV();
        try {
         
        	DocumentBuilderFactory dbFactory ;
        	 DocumentBuilder dBuilder ;
        	 File fXmlFile;
        	 fXmlFile= new File(chemin);
             dbFactory = DocumentBuilderFactory.newInstance();
             dBuilder = dbFactory.newDocumentBuilder();
            
            //optional, but recommended
            //read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
        	Document doc = dBuilder.parse(fXmlFile);
        	doc.getDocumentElement().normalize();
 

            NodeList nList = doc.getElementsByTagName("identite");
            
                Node nNode = nList.item(0);
                CVResume ident= new CVResume();
               

                if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                    Element eElement = (Element) nNode;
                    ident.nom =eElement.getElementsByTagName("nom").item(0).getTextContent();
                    ident.prenom = eElement.getElementsByTagName("prenom").item(0).getTextContent();
                    ident.objectif  = doc.getElementsByTagName("objectif").item(0).getTextContent();
                   
                    cv.addident(ident);
                    cv.adresse= doc.getElementsByTagName("adresse").item(0).getTextContent();
                    cv.dateNaiss = eElement.getElementsByTagName("date_naissance").item(0).getTextContent();
                     cv.num_tel = eElement.getElementsByTagName("num_tel").item(0).getTextContent();
                   
                }
          
            NodeList nList2 = doc.getElementsByTagName("experience");
            for (int temp = 0; temp < nList2.getLength(); temp++) {

                Node nNode1 = nList2.item(temp);
 
                if (nNode1.getNodeType() == Node.ELEMENT_NODE) {

                    Element eElement = (Element) nNode1;
                    Experience ex=new Experience();
                    ex.entreprise=eElement.getElementsByTagName("entreprise").item(0).getTextContent();
                    ex.domaine=eElement.getElementsByTagName("domaine").item(0).getTextContent();
                    ex.date_debut=eElement.getElementsByTagName("date_debut").item(0).getTextContent();
                    ex.date_fin=eElement.getElementsByTagName("date_fin").item(0).getTextContent();
                    ex.description=eElement.getElementsByTagName("description").item(0).getTextContent();
                    cv.addexperience(ex);
 
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
		return cv;
    }

}