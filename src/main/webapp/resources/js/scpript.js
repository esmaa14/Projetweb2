function affCache(idDiv,file_name,parm) {
var div = document.getElementById(idDiv);
if (div.style.display == ""){
div.style.display = "none";
switch_overview(file_name,parm);}
else{
div.style.display = "";
switch_overview2(file_name,parm);}
}
 
 function switch_overview(file_name,parm)	
  {
     file_name = file_name.value;
     var img = document.getElementById("overview"+parm);
	if (img!=null)
	  img.setAttribute("src", "./resources/images/plus.gif");
   //img.src = filename;
 } 
 function switch_overview2(file_name,parm)	
  {
     file_name = file_name.value;
     var img = document.getElementById("overview"+parm);
	if (img!=null)
	  img.setAttribute("src", "./resources/images/moins.gif");
   //img.src = filename;
 } 
 
function add_exp(idDiv,file_name,parm) {
var div = document.getElementById(idDiv); 
 div.style.display = "";
 var img = document.getElementById("exp"+parm);
 img.style.display= "none";
 var num=parseInt(parm)+1;
 
 document.getElementById("exp"+num).style.display="";
 
 }
 function add_expfin(idDiv,file_name,parm) {
var div = document.getElementById(idDiv); 
 div.style.display = "";
 var img = document.getElementById("exp"+parm);
 img.style.display= "none";
 
 
 }
 
 
 
 
  function verif()
  {
	 if (document.cv_add.objectif.value == "") {
	  alert("Veuillez introduire un objectif");
	  document.cv_add.objectif.focus();
	  return;
	} //Fsi 
	 if (document.cv_add.nom.value == "") {
	  alert("Veuillez introduire un nom");
	  document.cv_add.nom.focus();
	  return;
	} //Fsi
	 
	   if (document.cv_add.prenom.value == "") {
	  alert("Veuillez introduire un Prenom");
	  document.cv_add.Prenom.focus();
	  return;
	} //Fsi 
	   if (document.cv_add.date_naissance.value == "") {
	  alert("Veuillez introduire votre date de naissance");
	  document.cv_add.date_naissance.focus();
	  return;
	} //Fsi
	
	 if (document.cv_add.adresse.value == "") {
	  alert("Veuillez introduire un adresse");
	  document.cv_add.adresse.focus();
	  return;
	} //Fsi 
	 
	
		
	if (document.cv_add.tel.value == "") {
	  alert("Veuillez introduire un numero de tel");
	  document.cv_add.tel.focus();
	  return;
	} //Fsi
	document.cv_add.submit();
    
  } //Fin verif
