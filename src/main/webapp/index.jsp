<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta:wght@500;700&display=swap" rel="stylesheet">

    <title>GESTIONE CANDIDATURE - Inserisci Candidato</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="img/unnamed.png">

    <script>
        function popup_note() {
            document.getElementById("note").style.display ="block";
        }
    </script>
</head>

<body style="background-color:rgb(160, 198, 212)">
        
   <style>
        #myVideo {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
        }
        
        .content {
            position: fixed;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            color: #f1f1f1;
            width: 100%;
            padding: 20px;
        }
        
        body,
        html {
            height: 100%;
        }
        
        .nav-link {
            color: white;
            font-weight: bold;
            margin-right: 15px;
        }
        
        .nav-link:hover {
            color: rgba(99, 166, 220, 0.952);
        }
        
        .act {
            color: rgb(0, 140, 255);
        }
        
        .iconcina {
            color: white;
        }
        
        .video-container {
            position: relative;
        }
        
        .video-container video {
            width: 100%;
            height: 100%;
            position: absolute;
            object-fit: cover;
            z-index: 0;
        }
        
        .video-container .caption {
            z-index: 1;
            position: relative;
            text-align: center;
            color: #dc0000;
            padding: 10px;
        }
    </style>
    
    
    <nav class="navbar navbar-expand-lg" style="background-color: rgba(0, 101, 184, 0.952); color: white;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">   </a>
            <button  class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa-solid fa-bars iconcina"></i>
            </button>
     
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="home.jsp">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link act" href="#">INSERISCI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Select">VISUALIZZA</a>
                    </li>
                </ul>
            </div>
            
        </div>
    </nav>
          
     <!-- tabella -->
    <div class="position-relative video-container">

        <!-- video -->
        <video autoplay muted loop id="myVideo2">
            <source src="img/bgvisual.mp4" type="video/mp4">
        </video>
        
        <div style="position: relative; top: 17px;">
            <h2 style="font-weight: bold; font-family: 'Dela Gothic One'; text-align: center; color: rgb(255, 255, 255); filter: drop-shadow(5px 5px 2px #696969)"> INSERIMENTO CANDIDATO:</h2>
        </div>
        
        <form action="Insert" method="POST" style="z-index:999">
            <div class="container" style="margin-top: 30px;">
                <div class="alert alert-dark" style="background-color: rgba(0, 101, 184, 0.952); border: 2px solid rgba(0, 101, 184, 0.952);padding: 10px; border-radius: 15px; height: 1300px;">
                    <div class="mb-3" style="color:whitesmoke">
                        <label for="exampleFormControlInput1" class="form-label">Nome:</label>
                        <input onkeyup="validaN()" type="text" class="form-control" name="nome" id="nome" placeholder="Nome" required>

                        <label for="exampleFormControlInput1" class="form-label">Cognome:</label>
                        <input onkeyup="validaC()" name="cognome" type="text" class="form-control" id="cognome" placeholder="Cognome" required>

                        <label for="exampleFormControlInput1" class="form-label">Data di Nascita:</label>
                        <input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" required>

                        <label for="exampleFormControlInput1" class="form-label">Residenza:</label>
                        <input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza">

                        <label for="exampleFormControlInput1" class="form-label">Numero di telefono:</label>
                        <input name="telefono" type="tel" placeholder="Numero di telefono" pattern="[0-9]{10}" class="form-control" id="exampleFormControlInput1" id="numero" required>

                        <label for="exampleFormControlInput1" class="form-label">Email:</label>
                        <input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" required>

                        <label for="exampleFormControlInput1" class="form-label">Titolo di studio:</label>
                        <select name="titolo_studio" onchange="controllotitolo()" id="titolodistudio" class="custom-select">
							<option value="Diploma">Diploma</option>
							<option value="Laurea">Laurea</option>
                    	</select> <br>

                        <label for="exampleFormControlInput1" class="form-label">Voto:</label>
                        <input name="voto" type="number" class="form-control" id="voto" placeholder="Voto" min="60" max="100">

                        <label for="exampleFormControlInput1" class="form-label">Formazione:</label>
                        <input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione">

                        <label for="exampleFormControlInput1" class="form-label">Data di candidatura:</label>
                        <input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura">

                        <label for="exampleFormControlInput1" class="form-label">Data di colloquio:</label>
                        <input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio">

                        <div class="mb-3">
                            <label for="greenpass">Certificazione Verde: </label>
                            <select name="greenpass" class="custom-select">
								<option value="si">Si</option>
								<option value="no">No</option>
							</select>
                            <br>
                        </div>
                    </div>

                    <div class="mb-3" style="color:whitesmoke">
                        <label for="esito">Esito:</label>
                        <select name="esito" class="custom-select">
							<option value="Idoneo">Idoneo</option>
							<option value="Non Idoneo">Non Idoneo</option>
							<option value="In attesa">In attesa</option>
							<option value="Da ricontattare">Da ricontattare</option>
						</select>
                        <br>
                        
						<div class="mb-3">
						  <label for="formFile" class="form-label">FIle:</label>
						  <input class="form-control" type="file" id="file" onchange="convertToBase64(document.getElementById('file').files[0]);">
						  <textarea hidden name="file" class="form-control" id="out"></textarea>
						</div>

                        <label for="exampleFormControlTextarea1" class="form-label">Note:</label>
                        <textarea style="height:150px" type="text" name="note" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_note()"> </textarea>
                        <p style="display: none; color: white;" id="note">Lunghezza massima 1000 caratteri</p>
                    </div>

                    <button style="margin-top:15px; position: absolute;left: 50%; transform: translate(-50%, -50%); background-color:rgb(42, 56, 253);" type="submit" class="btn btn-primary" id="submit" onclick="localStorage.setItem('inserimento', 1);">Invio</button>
                </div>
            </div>
        </form>
    </div>

    <script src="js/script.js">
    </script>
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

    <script>
        var video = document.getElementById("myVideo2");
        
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
                
    </script>
        
        
        
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/c2b8bef5f3.js" crossorigin="anonymous"></script>
</body>

</html>
