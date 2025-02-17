<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta:wght@500;700&display=swap" rel="stylesheet">

	<title>GESTIONE CANDIDATURE - Modifica Candidato</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<link rel="icon" href="img/unnamed.png">
</head>

<style>
	.nav-link {
		color: white;
		font-weight: bold;
        margin-right: 15px;
	}

	.nav-link:hover {
		color: rgba(99, 166, 220, 0.952);
	}

	.act {
		color: rgb(0, 140, 255);;
	}

	.iconcina {
		color: white;
	}
</style>

<body style="background-color: rgb(160, 198, 212)" onload="controllotitolo(); setValue(${c.voto}); getFile();">

	<nav class="navbar navbar-expand-lg" style="background-color: rgba(0, 101, 184, 0.952); color: white;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> </a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<i class="fa-solid fa-bars iconcina"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="home.jsp">HOME</a></li>
					<li class="nav-item">
						<a class="nav-link" href="index.jsp">INSERISCI</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="Select">VISUALIZZA</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div style="position: relative; top: 17px;">
    	<h2 style="font-weight: bold; font-family: 'Dela Gothic One'; text-align: center; color: rgb(255, 255, 255); filter: drop-shadow(5px 5px 2px #696969)"> MODIFICA CANDIDATO:</h2>
    </div>

	<form action="Update" method="POST">
		<div class="container" style="margin-top: 30px;">
			<div class="alert alert-dark" style="background-color: rgba(0, 101, 184, 0.952); border: 2px solid rgba(0, 101, 184, 0.952); padding: 10px; border-radius: 15px;">
				<div class="mb-3" style="color: white;">

					<input name="id" type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="Nome" value="${c.id}">

					<label for="exampleFormControlInput1" class="form-label">Nome</label>
					<input name="nome" onkeyup="validaN()" type="text" class="form-control" id="nome" placeholder="Nome" value="${c.nome}" required>
					
					<label for="exampleFormControlInput1" class="form-label">Cognome</label>
					<input name="cognome" onkeyup="validaC()" type="text" class="form-control" id="cognome" placeholder="Cognome" value="${c.cognome}" required> 
						
					<label for="exampleFormControlInput1" class="form-label">Data di nascita</label> 
					<input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" value="${c.anno_nascita}" required>

					<label for="exampleFormControlInput1" class="form-label">Residenza</label>
					<input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza" value="${c.residenza}"> 
						
					<label for="exampleFormControlInput1" class="form-label">Numero di telefono</label> 
					<input name="telefono" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="3398569667" pattern="[0-9]{10}" value="${c.telefono}" required> 
						
					<label for="exampleFormControlInput1" class="form-label">Email</label> 
					<input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" value="${c.email}" required> 
					
					<label for="exampleFormControlInput1" class="form-label">Titolo di studio</label>
					<c:if test="${c.titolo_studio == 'Diploma'}">
						<select name="titolo_studio" class="custom-select" onchange="controllotitolo()" id="titolodistudio">
							<option value="Diploma">Diploma</option>
							<option value="Laurea">Laurea</option>
						</select>
						<br>
					</c:if>

					<c:if test="${c.titolo_studio == 'Laurea'}">
						<select name="titolo_studio" class="custom-select" onchange="controllotitolo()" id="titolodistudio">
							<option value="Laurea">Laurea</option>
							<option value="Diploma">Diploma</option>
						</select>
						<br>
					</c:if>

					<label for="exampleFormControlInput1" class="form-label">Voto</label>
					<input name="voto" type="number" value="${c.voto}" class="form-control" id="voto" placeholder="Voto" min="60">




					<label for="exampleFormControlInput1" class="form-label">Formazione</label>
					<input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione" value ="${c.formazione}"> 
						
					<label for="exampleFormControlInput1" class="form-label">Data di candidatura</label> 
					<input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura" value="${c.data_candidatura}"	> 
						
					<label for="exampleFormControlInput1" class="form-label">Data di colloquio</label> 
					<input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio" value="${c.data_colloquio}"> 
						
					<label for="greenpass">Certificazione Verde: </label>
					<c:if test="${c.greenpass == 'si'}">
						<select name="greenpass" class="custom-select">
							<option value="si">Si</option>
							<option value="no">No</option>
						</select>
						<br>
					</c:if>

					<c:if test="${c.greenpass == 'no'}">
						<select name="greenpass" class="custom-select">
							<option value="no">No</option>
							<option value="si">Si</option>
						</select>
						<br>
					</c:if>
				</div>

				<div class="mb-3" style="color: white;">
					<label for="esito">Esito:</label>
					<c:if test="${c.esito == 'Idoneo'}">
						<select name="esito" id="esito" class="custom-select">
							<option value="Idoneo">Idoneo</option>
							<option value="Non Idoneo">Non Idoneo</option>
							<option value="In attesa">In attesa</option>
							<option value="Da ricontattare">Da ricontattare</option>
						</select>
					</c:if>

					<c:if test="${c.esito == 'Non Idoneo'}">
						<select name="esito" id="esito" class="custom-select">
							<option value="Non Idoneo">Non Idoneo</option>
							<option value="Idoneo">Idoneo</option>
							<option value="In attesa">In attesa</option>
							<option value="Da ricontattare">Da ricontattare</option>
						</select>
					</c:if>

					<c:if test="${c.esito == 'In attesa'}">
						<select name="esito" id="esito" class="custom-select">
							<option value="In attesa">In attesa</option>
							<option value="Idoneo">Idoneo</option>
							<option value="Non Idoneo">Non Idoneo</option>
							<option value="Da ricontattare">Da ricontattare</option>
						</select>
					</c:if>

					<c:if test="${c.esito == 'Da ricontattare'}">
						<select name="esito" id="esito" class="custom-select">
							<option value="Da ricontattare">Da ricontattare</option>
							<option value="Idoneo">Idoneo</option>
							<option value="Non Idoneo">Non Idoneo</option>
							<option value="In attesa">In attesa</option>
						</select>
					</c:if>
					
					<div class="mb-3">
						<label for="formFile" class="form-label">FIle:</label>
						<input class="form-control" type="file" id="file" onchange="convertToBase64(document.getElementById('file').files[0]);">
						<textarea hidden name="file" class="form-control" id="out"></textarea>
						
						<div id="fileDiv">
				        	<label for="exampleFormControlInput1" class="form-label">File Caricato: </label>
				        	<button onclick="apri()" type="button" id="exampleFormControlInput1" class="form-control">File Caricato</button>
				        </div>
					</div>

					<label for="exampleFormControlTextarea1" class="form-label">Note</label> 
					<textarea style="height:150px" type="text" name="note" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_note()">${c.note}</textarea>
					<p style="display: none; color: white;" id="note">Lunghezza massima 1000 caratteri</p>
				</div>
				<button type="submit" class="btn btn-primary" id="submit" onclick="risultato()">Salva Modifiche</button>
			</div>
		</div>
	</form>

	<style>
		.ERROR {
            outline: none !important;
            border: 2px solid red !important;
            box-shadow: 0 0 0 0.2rem rgb(255 0 0 / 57%) !important;
        }

		.hidden {
			display: none;
		}
	</style>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/c2b8bef5f3.js" crossorigin="anonymous"></script>
	<script src="js/script.js"></script>
	
	<script>
	function setValue(data){
		var voto = document.getElementById("voto");
		voto.value = data;
	}
		
        function popup_note() {
            document.getElementById("note").style.display ="block";
        }
        
        function getFile(){
        	if(localStorage.getItem("file") != ""){
        		var out = document.getElementById("out");	
        		out.value = localStorage.getItem("file");
        	}
        	
        	if(localStorage.getItem("file") == ""){
        		document.getElementById("fileDiv").classList.add("hidden");
        	}
        }
        
       function convertToBase64(file){
            try{
            	document.getElementById("out").focus();
	            var filereader = new FileReader();
	            filereader.file_name = file.name;
	            filereader.onload = function(){
		            var content = this.result;
		            document.getElementById("out").value = content;
	            };
	
	            filereader.readAsDataURL(file);
	
	
	        }
	        catch(err){
	            	console.log(err);
	        }
        }
        
        function apri(){
        	window.open("file.html");
        	
        }
        
        
    
	</script>

</body>
</html>
