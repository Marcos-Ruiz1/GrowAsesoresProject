<%-- 
    Document   : personalizarPerfil
    Created on : 13 may 2024, 00:26:01
    Author     : waw
--%>

<%@page import="controlador.ConsultasUsuario"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/stylePersonalizar.css">
        <link rel="icon" href="imagenes/growiconoblanco-19.png" type="image/x-icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!--Iconos boobstrap-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Personalizar Perfil</title>
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
                                <a class="nav-link" href="contacto.jsp">Contacto</a>
                            </li> 

                        </ul>

                    </div>
                </div>
            </nav>
        </header>

        <div class="wrapper-main-banner">


            <%
                Usuario usuario = null;
                HttpSession sessionActual = request.getSession(false);
                if (sessionActual != null) {
                    Integer id_usuario = (Integer) sessionActual.getAttribute("id_usuario");
                    if (id_usuario != null) {
                        ConsultasUsuario sql = new ConsultasUsuario();
                        usuario = sql.consultaUsuarioConId(id_usuario);
                        // Puedes continuar con el procesamiento usando el usuario obtenido
                    } else {
                        // Redirigir al usuario o manejar el caso donde id_usuario no está en la sesión
                        response.sendRedirect("unirseLogin.jsp"); // Asumiendo que 'login.jsp' es la página de inicio de sesión
                        return;
                    }
                } else {
                    // Manejar el caso donde la sesión no está activa
                    response.sendRedirect("unirseLogin.jsp");
                    return;
                }
            %>
            <div class="info-cuenta">

                <h1 class="title-cuenta">Mi cuenta </h1>
                <img id="editarNombre" src="/icons/icon-editar.svg" class="icon-editar"/>
                <h1 class="label-nombre">
                    <span class="label-text">Nombre:</span>
                    <span id="nombreUsuario"><%= usuario.getNombres()%></span>
                </h1>


                <img  id="editarPaterno" src="/icons/icon-editar.svg" class="icon-editar"/>     
                <h1 class="label-nombre">
                    <span class="label-text">Apellido Paterno: </span>
                    <span id="apellidoPaterno"><%= usuario.getApellidoPaterno()%></span>
                </h1>
                <img id="editarMaterno"  src="/icons/icon-editar.svg" class="icon-editar"/>
                <h1 class="label-nombre">
                    <span class="label-text">Apellido Materno: </span>
                    <span id="apellidoMaterno"><%= usuario.getApellidoMaterno()%></span>
                </h1>
                <img id="editarPassword"  src="/icons/icon-editar.svg" class="icon-editar"/>
                <h1 class="label-nombre">
                    <span class="label-text">Contraseña: </span>
                    <span id="password"><%= usuario.getContraseña()%></span>
                </h1>
                <img id="editarTelefono"  src="/icons/icon-editar.svg" class="icon-editar"/>
                <h1 class="label-nombre">
                    <span class="label-text">Telefono: </span>
                    <span id="telefono"><%= usuario.getTelefono()%></span>
                </h1>

            </div>
            <div class="cuadro-lateral">


            </div> 


            <script src="js/actualizarUsuario.js"></script>

    </body>


</html>
