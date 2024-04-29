<%-- 
    Document   : adminView
    Created on : 29 abr. 2024, 03:05:01
    Author     : xfs85
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleAdmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
<<<<<<< HEAD
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
=======
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
                            <a class="nav-link" href="cerrar">Cerrar Sesión</a>
                        </li>
             
            
                    </ul>
>>>>>>> c210f99d24186b15d3ea5e757dc690bc4ed3fc7f



                        </ul>

                    </div>
                </div>
            </nav>
        </header>

        <div class="title">
            <br><h2>Solicitudes Realizadas</h2><br>
        </div>    

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre del aspirante</th>
                    <th scope="col">Fecha de preferencia</th>
                    <th scope="col">Motivo</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <tr data-id="1">
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>
                        <button onclick="openModal('1')">Asignar Cita</button>
                        <button onclick="deleteRow('1')">Eliminar</button>
                    </td>
                </tr>
                <tr data-id="2">
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                    <td>
                        <button onclick="openModal('2')">Asignar cita</button>
                        <button onclick="deleteRow('2')">Eliminar</button>
                    </td>
                </tr>
                <tr data-id="3">
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                    <td>
                        <button onclick="openModal('3')">Asignar cita</button>
                        <button onclick="deleteRow('3')">Eliminar</button>
                    </td>
                </tr>
            </tbody>
        </table>

     <div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <input type="datetime-local" id="fecha-y-hora">
    <textarea id="cuadro-de-texto" placeholder="Escribe aquí..."></textarea>
  </div>
</div>


        <script>
            // Funciones para manejar la apertura y cierre del modal
            function openModal(id) {
                var modal = document.getElementById("myModal");
                modal.style.display = "block";
                // Aquí puedes añadir lógica para cargar los datos del aspirante correspondiente al ID pasado como parámetro
            }

            function closeModal() {
                var modal = document.getElementById("myModal");
                modal.style.display = "none";
            }

            // Función para eliminar una fila de la tabla
            function deleteRow(id) {
                // Obtener la fila correspondiente al ID
                var row = document.querySelector("tr[data-id='" + id + "']");

                // Verificar si se encontró la fila
                if (row) {
                    // Eliminar la fila del DOM
                    row.parentNode.removeChild(row);
                } else {
                    console.log("No se encontró ninguna fila con el ID: " + id);
                }
            }
        </script>
    </body>
</html>
