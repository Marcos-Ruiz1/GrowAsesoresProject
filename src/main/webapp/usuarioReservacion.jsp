<%-- 
    Document   : usuarioReservacion
    Created on : 29 abr 2024, 03:14:28
    Author     : Marco Zazueta, Luis Contreras, Raul Luna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Realizar una reservación</title>
        <link rel="stylesheet" href="css/styleUsuarioReservacion.css"/>
        <link rel="icon" href="imagenes/growiconoblanco-19.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg header-navbar"
                 style="background-color: #1E1E1E;">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"><img src="imagenes/imagotipogrow-10.png" alt="" width="200px"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 navbar-options">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="servicios.jsp">Servicios</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="conocenos.jsp">Conócenos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="unirseInicial.jsp">Únete a nuestro equipo</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contacto.jsp">Contacto</a>
                            </li> 

                        </ul>

                    </div>
                </div>
            </nav>
        </header>

        <div class="informacion-container">
            <div class="information">
                <form action="registraReservacion" method="post">
                    <h1 class="main-text">Realiza una reservación</h1>
                    <input type="time" class="horario" name="horario" placeholder="Ingresa horario de preferencia"> <br><br><br>
                    <input type="text" class="motivo" name="motivo" placeholder="¿Por qué quieres entrar a GROW?"> <br>
                    <button class="boton">subir</button>
                </form>

            </div>

        </div>
        <footer>


        </footer>


    </body>
</html>
