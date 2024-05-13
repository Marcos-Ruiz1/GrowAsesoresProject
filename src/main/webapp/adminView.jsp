<%-- 
    Document   : adminView
    Created on : 29 abr. 2024, 03:05:01
    Author     : Marco Zazueta, Luis Contreras, Raul Luna
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.SolicitudCita"%>
<%@page import="modelo.SolicitudCita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleAdmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>Vista de administrador</title>
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
                                <a class="nav-link" href="gestionarUsuarios.jsp">Gestionar Usuarios</a>
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

        <div class="title">
            <br><h2>Solicitudes Realizadas</h2><br>

        </div>    

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Motivo</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody></tbody> <!-- Aquí se agregarán las filas dinámicamente -->
        </table>

        <button class="boton-cargar" onclick="loadTable()">Cargar Tabla</button>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>
                <input type="datetime-local" id="fecha-y-hora">
                <textarea id="cuadro-de-texto" placeholder="Escribe aquí..."></textarea>
            </div>
        </div>


        <div class="title">
            <br><h2>Citas aceptadas</h2><br>



        </div>    

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Motivo</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody></tbody> <!-- Aquí se agregarán las filas dinámicamente -->
        </table>


        <script>
            function loadTable() {
                fetch("/ConsultarSolicitudes", {
                    method: 'GET'
                })
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Error al cargar la tabla');
                            }
                            return response.json(); // Convertir la respuesta a JSON
                        })
                        .then(data => {
                            console.log(data)
                            updateTable(data); // Llamar a la función para actualizar la tabla con los datos recibidos
                        })
                        .catch(error => {
                            console.error(error);
                        });
            }

            function updateTable(data) {
                let tableBody = document.querySelector('.table tbody');
                console.log(tableBody);
                tableBody.innerHTML = '';
                console.log(data);
                data.forEach((solicitud) => {
                    console.log(solicitud);
                    console.log(solicitud.horarioPreferido);
                    console.log(typeof solicitud.horarioPreferido);
                    let horarioPreferido = solicitud.horarioPreferido || '';
                    let estado = solicitud.estado;
                    let id = solicitud.id;
                    console.log(horarioPreferido);

                    // Crear los elementos de la tabla
                    let row = document.createElement('tr');
                    let tdHorario = document.createElement('td');
                    let tdEstado = document.createElement('td');
                    let tdButtons = document.createElement('td');
                    let buttonAsignar = document.createElement('button');
                    let buttonEliminar = document.createElement('button');

                    // Asignar los valores a los elementos
                    tdHorario.textContent = horarioPreferido;
                    tdEstado.textContent = estado;
                    buttonAsignar.textContent = 'Asignar Cita';
                    buttonEliminar.textContent = 'Eliminar';

                    // Asignar los eventos a los botones
                    buttonAsignar.onclick = function () {
                        openModal(id);
                    };
                    buttonEliminar.onclick = function () {
                        deleteRow(id);
                    };

                    // Agregar los elementos a la fila
                    tdButtons.appendChild(buttonAsignar);
                    tdButtons.appendChild(buttonEliminar);
                    row.appendChild(tdHorario);
                    row.appendChild(tdEstado);
                    row.appendChild(tdButtons);

                    // Agregar la fila al cuerpo de la tabla
                    tableBody.appendChild(row);
                });
            }
            /*
             function updateTable(data) {
             let tableBody = document.querySelector('.table tbody');
             console.log(tableBody);
             tableBody.innerHTML = '';
             console.log(data);
             data.forEach((solicitud) => {
             console.log(solicitud);
             console.log(solicitud.horarioPreferido);
             console.log(typeof solicitud.horarioPreferido);
             let horarioPreferido = solicitud.horarioPreferido || '';
             let estado = solicitud.estado;
             let id = solicitud.id;
             console.log(horarioPreferido);
             let row = `<tr>
             <td>${horarioPreferido}</td>
             <td>${estado}</td>
             <td>
             <button onclick="openModal('${id}')">Asignar Cita</button>
             <button onclick="deleteRow('${id}')">Eliminar</button>
             </td>
             </tr>`;
             console.log(row);
             tableBody.innerHTML += row;
             });
             /*data.forEach((solicitud) => {
             console.log(solicitud);
             console.log(solicitud.horarioPreferido);
             console.log(typeof solicitud.horarioPreferido);
             var row = `<tr>
             <td>${solicitud.horarioPreferido || ''}</td>
             <td>${solicitud.estado}</td>
             <td>
             <button onclick="openModal('${solicitud.id}')">Asignar Cita</button>
             <button onclick="deleteRow('${solicitud.id}')">Eliminar</button>
             </td>
             </tr>`;
             console.log(row);
             tableBody.innerHTML += row;
             });
             }*/

            // Funciones para manejar la apertura y cierre del modal
            function openModal(id) {
                console.log(id);
                var modal = document.getElementById("myModal");
                modal.style.display = "block";
                // Aquí puedes añadir lógica para cargar los datos del aspirante correspondiente al ID pasado como parámetro
            }

            function closeModal() {
                var modal = document.getElementById("myModal");
                modal.style.display = "none";
            }

            function deleteRow(id) {
                console.log(id);
                if (confirm("¿Estás seguro de que deseas eliminar esta reserva?")) {
                    fetch('/eliminar-reserva?id=' + id, {
                        method: 'DELETE',
                    })
                            .then(response => {
                                if (response.ok) {
                                    window.location.reload();
                                } else {
                                    console.error('Error al eliminar la reserva');
                                }
                            });
                }
            }
        </script>
    </body>
</html>
