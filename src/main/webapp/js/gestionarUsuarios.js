window.addEventListener('DOMContentLoaded', (event) => {
    loadTable();
});


function loadTable() {
    fetch("/ConsultarUsuario", {
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
    tableBody.innerHTML = '';

    data.forEach((usuario) => {
        console.log(usuario)
        let nombres = usuario.nombres || '';
        let apellidoPaterno = usuario.apellidoPaterno;
        let apellidoMaterno = usuario.apellidoMaterno;
        let telefono = usuario.telefono;
        let correoElectronico = usuario.correoElectronico;
        let id = usuario.id;

        // Crear los elementos de la tabla
        let row = document.createElement('tr');
        let tdNombres = document.createElement('td');
        let tdApellidoPaterno = document.createElement('td');
        let tdApellidoMaterno = document.createElement('td');
        let tdTelefono = document.createElement('td');
        let tdCorreoElectronico = document.createElement('td');
        let tdButtons = document.createElement('td');
        let buttonActualizar = document.createElement('button');
        let buttonEliminar = document.createElement('button');

        // Asignar los valores a los elementos
        tdNombres.textContent = nombres;
        tdApellidoPaterno.textContent = apellidoPaterno;
        tdApellidoMaterno.textContent = apellidoMaterno;
        tdTelefono.textContent = telefono;
        tdCorreoElectronico.textContent = correoElectronico;
        buttonActualizar.textContent = 'Actualizar';
        buttonEliminar.textContent = 'Eliminar';

        // Asignar los eventos a los botones
        buttonActualizar.onclick = function() { actualizarModal(id); };
        buttonEliminar.onclick = function() { deleteRow(id); };

        // Agregar los elementos a la fila
        tdButtons.appendChild(buttonActualizar);
        tdButtons.appendChild(buttonEliminar);
        row.appendChild(tdNombres);
        row.appendChild(tdApellidoPaterno);
        row.appendChild(tdApellidoMaterno);
        row.appendChild(tdTelefono);
        row.appendChild(tdCorreoElectronico);
        row.appendChild(tdButtons);

        // Agregar la fila al cuerpo de la tabla
        tableBody.appendChild(row);
    });
}

var usuarioId;

function actualizarModal(id) {
    console.log(id);
    usuarioIde = id;
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
    // Guardar el ID del usuario en un atributo de datos en el modal
    modal.dataset.userId = id;

}

// Asignar el evento al botón de actualizar dentro del modal
document.getElementById('botonActualizar').onclick = function() {
    var modal = document.getElementById("myModal");
    // Obtener el ID del usuario del atributo de datos en el modal
    var id = modal.dataset.userId;
    actualizarUsuario(id);
};

function actualizarUsuario(id) {
    var modal = document.getElementById("myModal");
    modal.style.display = "block";

    document.getElementById('actualizarUsuarioForm').addEventListener('submit', function(event) {
        event.preventDefault();

        let nombre = document.getElementById('nombre').value;
        let apellidoPaterno = document.getElementById('apellidoPaterno').value;
        let apellidoMaterno = document.getElementById('apellidoMaterno').value;
        let telefono = document.getElementById('telefono').value;
        let correo = document.getElementById('correo').value;

        fetch('/ActualizarUsuario?id=' + id, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: new URLSearchParams({
                'nombre': nombre,
                'apellidoPaterno': apellidoPaterno,
                'apellidoMaterno': apellidoMaterno,
                'telefono': telefono,
                'correo': correo
            })
        })
        .then(response => response.json())
        .then(data => {
            if (data) {
                // Actualizar los valores de la fila en la tabla
                let row = document.querySelector('.table tbody tr[data-id="' + id + '"]');
                if (row) {
                    row.querySelector('.nombre').textContent = nombre;
                    row.querySelector('.apellidoPaterno').textContent = apellidoPaterno;
                    row.querySelector('.apellidoMaterno').textContent = apellidoMaterno;
                    row.querySelector('.telefono').textContent = telefono;
                    row.querySelector('.correo').textContent = correo;
                }
            } else {
                console.error('Error al actualizar el usuario');
            }
        });
    });
} 

function deleteRow(id) {
    console.log(id);
    if (confirm("¿Estás seguro de que deseas eliminar este usuario?")) {
        fetch('/EliminarUsuario?id=' + id, {
            method: 'POST'
        })
        .then(response => response.json())
        .then(data => {
            if (data) {
                
                let row = document.querySelector('.table tbody tr[data-id="' + id + '"]');
                if (row) {
                    row.remove();
                }
            } else {
                console.error('Error al eliminar el usuario');
            }
        })
        .then(() => {
            // Recargar la página
            window.location.reload();
        });
    }
}

let registrarUsuario = document.getElementById("btnRegistrarUsuario");

registrarUsuario.addEventListener('click', function(){
   
    
});

