<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
<meta charset="utf-8" />
 <title>Document sans nom</title>
<link href="./resources/style.css" rel="stylesheet" type="text/css" />
<script src="./resources/js/scpript.js"></script>
<!-- jQuery  -->
<link rel="stylesheet" href="http:///code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http:///code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <script src="./resources/js/modernizr.custom.2.8.3.min.js"></script>
  </head>
<body> 
 
    <div class="formulaire">
 	<form action="add" method="post" name="cv_add"  id='cv_add' >

	<fieldset>
     	
     	<p style="margin-top:25px;margin-bottom:40px;color:#777;font:11px Arial;margin-right:94px;">
		<em>Ajouter un CV </br></br>
        <span class="title">Les champs * sont obligatoire</span>
        </em>
        
		</p>	<input name="id_candidat" type="hidden" value="id_candidat" />
        <p><label for="text">  Objectif <span class="title">*</span></label>
		<input type="text" name="objectif" id="objectif" placeholder="Inserer Un Titre a votre Cv"></p>
        
	
		 	
		<p><label for="text"> Nom  <span class="title">*</span></label>
		<input type="text" name="nom" id="nom" placeholder="Inserer votre nom ici"></p>
		
		<p><label for="text"> Prenom  <span class="title">*</span></label>
		<input type="text" name="prenom" id="prenom" placeholder="Inserer votre prenom ici"></p>
		 <p><label for="date">Date de naissance <span class="title">*</span></label>
		<input type="date" name="date_naissance" id="date_naissance" value="2012-03-01"></p> 
		
		<p><label for="text"> Adresse <span class="title">*</span></label>
 		 <textarea  name="adresse" id="adresse" placeholder="Inserer votre Adresse"  ></textarea>
	 </p>
	        <p><label for="tel">TÃ©l <span class="title">*</span></label>
		<input type="text" id="tel" name="tel" placeholder="03364775236" required></p>
		
		 
	
	        <p>
				<h4><img id="overview_exp" name="overview_exp" src="./resources/images/plus.gif"
					onClick="javascript:affCache('add_exp',this,'_exp');"  style="background-repeat:no-repeat; background-position:left" class="image">
						Experience   </h4>
                   
				<div  id="add_exp" style="display:none;">  
				<p>				
						<div class="formulaire">
							<fieldset>
     	
								<p  class="title">
									<em> Votre 1er Experience   </em>
								</p> 
								<p>
									<label for="text"> Entreprise  </label>
									<input type="text" name="entreprise1" id="entreprise1" placeholder="Inserer le Nom de l'entreprise">
								</p>
								<p>
									<label for="text"> Domaine  </label>
									<input type="text" name="domaine1" id="domaine1" placeholder="Inserer le Domaine">
								</p>
								<p>
									<label for="date">Date Debut</label>
									<input type="date" name="dat_deb1" id="dat_deb1" value="2012-03-01">

								</p> 
								<p>
									<label for="date">Date Fin</label>
									<input type="date" name="dat_fin1" id="dat_fin1" value="2012-03-01">
								</p> 
								<p>
									<label for="text"> DÃ©scription  </label>
									<textarea  name="description1" id="description1" placeholder="Inserer une Description"  ></textarea>
								</p>
						 
							</fieldset> 
						</div> 
           </p>	
					
							<img id="exp2" name="exp2" src="./resources/images/add.gif"
								onClick="javascript:add_exp('add_exp2',this,'2');"  style="background-repeat:no-repeat; background-position:left" class="image">
								 
							<p><div  id="add_exp2" style="display:none;">  
								<p>	<div class="formulaire">
							<fieldset>
     	
								<p  class="title">
									<em> Votre 2eme Experience   </em>
								</p> 
								<p>
									<label for="text"> Entreprise  </label>
									<input type="text" name="entreprise2" id="entreprise2" placeholder="Inserer le Nom de l'entreprise">
								</p>
								<p>
									<label for="text"> Domaine  </label>
									<input type="text" name="domaine2" id="domaine2" placeholder="Inserer le Domaine">
								</p>
								<p>
									<label for="date">Date Debut</label>
									<input type="date" name="dat_deb2" id="dat_deb2" value="2012-03-01">
								</p> 
								<p>
									<label for="date">Date Fin</label>
									<input type="date" name="dat_fin2" id="dat_fin2" value="2012-03-01">
								</p> 
								<p>
									<label for="text"> DÃ©scription  </label>
									<textarea  name="description2" id="description2" placeholder="Inserer une Description"  ></textarea>
								</p>
						 
							</fieldset> 
						</div> </p>
								 <img id="exp3" name="exp3" src="./resources/images/add.gif" style="display:none;"
									onClick="javascript:add_exp('add_exp3',this,'3');"  style="background-repeat:no-repeat; background-position:left" class="image">
								 
									<div  id="add_exp3" style="display:none;">  
								<p>	<div class="formulaire">
								<fieldset>
     	
								<p  class="title">
									<em> Votre 3eme Experience   </em>
								</p> 
								<p>
									<label for="text"> Entreprise  </label>
									<input type="text" name="entreprise3" id="entreprise3" placeholder="Inserer le Nom de l'entreprise">
								</p>
								<p>
									<label for="text"> Domaine  </label>
									<input type="text" name="domaine3" id="domaine3" placeholder="Inserer le Domaine">
								</p>
								<p>
									<label for="date">Date Debut</label>
									<input type="date" name="dat_deb3" id="dat_deb3" value="2012-03-01">
								</p> 
								<p>
									<label for="date">Date Fin</label>
									<input type="date" name="dat_fin3" id="dat_fin3" value="2012-03-01">
								</p> 
								<p>
									<label for="text"> DÃ©scription  </label>
									<textarea  name="description3" id="description3" placeholder="Inserer une Description"  ></textarea>
								</p>
						 
							</fieldset> 
							 </div> </p>
										<img id="exp4" name="exp4" src="./resources/images/add.gif" style="display:none;"
									onClick="javascript:add_expfin('add_exp4',this,'4');"  style="background-repeat:no-repeat; background-position:left" class="image">
								 
									<div  id="add_exp4" style="display:none;"> 
	  							<p>	<div class="formulaire">
								<fieldset>
     	
								<p  class="title">
									<em> Votre 4eme Experience   </em>
								</p> 
								<p>
									<label for="text"> Entreprise  </label>
									<input type="text" name="entreprise4" id="entreprise4" placeholder="Inserer le Nom de l'entreprise">
								</p>
								<p>
									<label for="text"> Domaine  </label>
									<input type="text" name="domaine4" id="domaine4" placeholder="Inserer le Domaine">
								</p>
								<p>
									<label for="date">Date Debut</label>
									<input type="date" name="dat_deb4" id="dat_deb4" value="2012-03-01">
								</p> 
								<p>
									<label for="date">Date Fin</label>
									<input type="date" name="dat_fin4" id="dat_fin4" value="2012-03-01">
								</p> 
								<p>
									<label for="text"> DÃ©scription  </label>
									<textarea  name="description4" id="description4" placeholder="Inserer une Description"  ></textarea>
								</p>
						 
							</fieldset>  
							</div> </p>
									</div>  
									</div> 
							</div> 
						</p>
				</div> 
			</p>
		<p class="centerAlign"><button type="submit" class="boutonSubmit" role="button" aria-disabled="false" onClick="javascript: verif();">
			Soumettre  
		</button></p>
		<div class="clear"></div>
	</fieldset>
	</form>
</div>
 <script>
    if (!Modernizr.touch || !Modernizr.inputtypes.date) {
        $('input[type=date]')
            .attr('type', 'text')
            .datepicker({
                // Consistent format with the HTML5 picker
                dateFormat: 'yy-mm-dd'
            });
    }
</script>
</body>
</html>
