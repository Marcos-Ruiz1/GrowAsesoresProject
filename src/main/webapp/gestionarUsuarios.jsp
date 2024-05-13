<%-- 
    Document   : gestionarUsuarios
    Created on : 8 may. 2024, 00:29:24
    Author     : Marco Zazueta, Luis Contreras, Raul Luna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleGestionarUsuarios.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>Gestión de Usuarios</title>
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
                                <a class="nav-link" href="AdminView.jsp">Gestión Administrativa</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="servicios.jsp">Gestionar Usuarios</a>
                            </li>  
                            <li class="nav-item">
                                <a class="nav-link" href="conocenos.jsp">Gestionar Cuenta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Cerrar Sesión</a>
                            </li>
                        </ul>


                    </div>
                </div>
            </nav>
        </header>
        
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Nombres</th>
                    <th scope="col">Apellido Paterno</th>
                    <th scope="col">Apellido Materno</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Acciones</th>
                    
                </tr>
            </thead>
            <tbody></tbody> <!-- Aquí se agregarán las filas dinámicamente -->
        </table>
        
        <button id="btnRegistrarUsuario">Registrar Usuario</button>
        
        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>
                <form id="actualizarUsuarioForm">
                    <input type="text" id="nombre" placeholder="Nombre">
                    <input type="text" id="apellidoPaterno" placeholder="Apellido Paterno">
                    <input type="text" id="apellidoMaterno" placeholder="Apellido Materno">
                    <input type="tel" id="telefono" placeholder="Teléfono">
                    <input type="email" id="correo" placeholder="Correo">
                    <button type="submit" id="botonActualizar">Actualizar</button>
                </form>
            </div>
        </div>
        
        <script src="js/gestionarUsuarios.js"></script>
    </body>
</html>
