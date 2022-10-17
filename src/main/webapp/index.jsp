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

            <title>Home Page</title>


            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="css/style.css">
            <title>Gestione Candidato</title>

            <script>
                function popup_note() {
                    document.getElementById("note").style.display = "block";
                }
            </script>
        </head>

        <body>
        
            <style>
        .nav-link{
            color: white;
        }
     
        .nav-link:hover{
            color: rgba(99, 166, 220, 0.952);
        }
     
       .act{
            color: rgb(0, 140, 255);;
        }
        .iconcina{
            color: white;
        }

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
                    <a class="nav-link act" href="index.jsp">INSERISCI</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="Select">VISUALIZZA</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          
            <form action="Insert" method="POST">
                <div class="container" style="margin-top: 30px;">
                    <div class="alert alert-dark">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Nome</label>
                            <input name="nome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nome" required> <label for="exampleFormControlInput1" class="form-label">Cognome</label>
                            <input name="cognome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Cognome" required> <label for="exampleFormControlInput1" class="form-label">Data di
								nascita</label> <input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" required> <label for="exampleFormControlInput1" class="form-label">Residenza</label>
                            <input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza" required> <label for="exampleFormControlInput1" class="form-label">Numero
								di telefono</label> <input name="telefono" type="tel" placeholder="3398569667" pattern="[0-9]{10}" class="form-control" id="exampleFormControlInput1" required>

                            <label for="exampleFormControlInput1" class="form-label">Email</label>
                            <input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" required>

                            <label for="exampleFormControlInput1" class="form-label">Titolo
								di studio</label> <input name="titolo_studio" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Titolo di studio" required> <label for="exampleFormControlInput1" class="form-label">Voto</label>                            <input name="voto" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Voto" required> <label for="exampleFormControlInput1" class="form-label">Formazione</label>
                            <input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione" required> <label for="exampleFormControlInput1" class="form-label">Data di
								candidatura</label> <input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura" required> <label for="exampleFormControlInput1" class="form-label">Data di
								colloquio</label> <input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio" required>
                            <div class="mb-3">
                                <label for="greenpass">Certificazione Verde: </label> <select name="greenpass">
									<option value="si">Si</option>
									<option value="no">No</option>
								</select> <br>

                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="esito">Esito:</label> <select name="esito">
								<option value="Idoneo">Idoneo</option>
								<option value="Non Idoneo">Non Idoneo</option>
								<option value="In attesa">In attesa</option>
								<option value="Da ricontattare">Da ricontattare</option>
							</select> <br>
                            <!-- <label for="exampleFormControlTextarea1" class="form-label">Esito colloquio</label> -->
                            <!-- <input name="esito" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_esito()">  -->

                            <label for="exampleFormControlTextarea1" class="form-label">Note</label>
                            <input type="text" name="note" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_note()">
                            <p style="display: none; color: blue;" id="note">Lunghezza massima 1000</p>
                        </div>

                        <button type="submit" class="btn btn-primary">Invio</button>
                    </div>
                </div>
            </form>
        </body>
        
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/c2b8bef5f3.js" crossorigin="anonymous"></script>

        </html>