package urouen.TP3XML.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

import urouen.TP3XML.config.*;
import urouen.TP3XML.controller.*; 

public class TEST {
	
	
	public  static void main(String args[]) throws IOException  
	{
		File dir = new File ("cvxml/");
		dir.mkdir();
	
		// CVcontroleur mescv = new CVcontroleur();
		/********  afficher la liste ddes cv              ***********/
	//	  mescv.affcier_list_cv() ;
		 //  mescv.affichercvresume("7");
		//  mescv.affichercvdetailler("4");
		/***********************/
		/*CVResume res=new CVResume("asmaat","asmaat","asmaaaat");
		CV cv=new CV( "14/07/1984","adr"); 
		cv.ident=res;
		Experience exp=new Experience("aaaa", "aaaa", "a", "aa","aa");
		cv.addexperience(exp);
		Experience exp2=new Experience("eee2", "ddd2", "rrrr2", "dffff2","desssss2");
		cv.addexperience(exp2);
		mescv.postCVInXML(cv);
		mescv.affcier_list_cv() ;
		  */
	}
 

}
