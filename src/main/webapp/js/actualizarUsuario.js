/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.getElementById('editarNombre').onclick = function () {
    var nuevoNombre = prompt("Ingresa el nuevo nombre:");
    if (nuevoNombre) {
        actualizarNombreUsuario('actualizarnombre', nuevoNombre);
    }
};


document.getElementById('editarPaterno').onclick = function () {
    var nuevoPaterno = prompt("Ingresa tu apellido paterno:");
    if (nuevoPaterno) {
        actualizarApellidoPaternoUsuario('actualizarpaterno', nuevoPaterno);
    }
};

document.getElementById('editarMaterno').onclick = function () {
    var nuevoMaterno = prompt("Ingresa tu apellido materno:");
    if (nuevoMaterno) {
        actualizarApellidoMaternoUsuario('actualizarmaterno', nuevoMaterno);
    }
};

document.getElementById('editarPassword').onclick = function () {
    var nuevoPassword = prompt("Ingresa la nueva contraseña:");
    if (nuevoPassword) {
        actualizarPassword('actualizarpassword', nuevoPassword);
    }
};

document.getElementById('editarTelefono').onclick = function () {
    var nuevoTelefono = prompt("Ingresa el nuevo telefono:");
    if (nuevoTelefono) {
        actualizarTelefono('actualizartelefono', nuevoTelefono);
    }
};
function actualizarNombreUsuario(accion, nuevoNombre) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'PersonalizarUsuario?accion=' + encodeURIComponent(accion) + '&valor=' + encodeURIComponent(nuevoNombre), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('nombreUsuario').textContent = xhr.responseText;
        }
    };
    xhr.send();
}


function actualizarApellidoPaternoUsuario(accion, nuevoPaterno) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'PersonalizarUsuario?accion=' + encodeURIComponent(accion) + '&valor=' + encodeURIComponent(nuevoPaterno), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('apellidoPaterno').textContent = xhr.responseText;
        }
    };
    xhr.send();
}

function actualizarApellidoMaternoUsuario(accion, nuevoMaterno) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'PersonalizarUsuario?accion=' + encodeURIComponent(accion) + '&valor=' + encodeURIComponent(nuevoMaterno), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('apellidoMaterno').textContent = xhr.responseText;
        }
    };
    xhr.send();
}


function actualizarPassword(accion, nuevoPassword) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'PersonalizarUsuario?accion=' + encodeURIComponent(accion) + '&valor=' + encodeURIComponent(nuevoPassword), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('password').textContent = xhr.responseText;
        }
    };
    xhr.send();
}


function actualizarTelefono(accion, nuevoTelefono) {
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'PersonalizarUsuario?accion=' + encodeURIComponent(accion) + '&valor=' + encodeURIComponent(nuevoTelefono), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById('telefono').textContent = xhr.responseText;
        }
    };
    xhr.send();
}








