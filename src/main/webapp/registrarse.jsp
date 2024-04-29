<%-- 
    Document   : registrarse
    Created on : 28 abr. 2024, 19:38:08
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleUnirseRegistrar.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <title>GROW Asesores</title>
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

                    </ul>

                </div>
            </div>
        </nav>
    </header>

    <!--Modal para Log In-->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Iniciar Sesión</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form>
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
              <i class="fa fa-user-circle-o" aria-hidden="true"></i><input type="email" name="txtUser" value="" placeholder="Correo" maxlength="" required> <br><br>
              <i class="fa fa-key" aria-hidden="true"></i><input type="password" name="txtClave" value="" placeholder="Password" required> <br> <br>
              <button type="submit" class="btn btn-outline-primary">Iniciar Sesión</button>
            </div>
            <div class="col-md-3"></div>
          </div>
        </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

        <div class="columns">
            
        <div class="leftColumn">
            <h2> Regístrate en GROW </h2>
            <div class="form">        
                <form action="nuevousuario" method="post" name="Formulario de Registro">
                    <input type="text" name="Nombre" value="" placeholder="Nombre(s)" required=""/> <br><br>
                    <input type="text" name="ApellidoP" value="" placeholder="Apellido Paterno" required=""/><br><br>
                    <input type="text" name="ApellidoM" value="" placeholder="Apellido Materno" required=""/><br><br>
                    <input type="text" name="Telefono" value="" placeholder="Telefono" required=""/><br><br>
                    <input type="email" name="Email" value="" placeholder="Correo Electrónico" required=""/><br><br>
                    <input type="password" name="pass" value="" placeholder="Contraseña" required=""/><br><br>
                    
                    <%-- 
                    <h6> Curriculum Vitae (opcional)</h6>
                    <label for="cvUpload" class="fileLabel">Arrastra o haz clic aquí para subir tu CV</label>                 
                    <input type="file" id="cvUpload" name="cvUpload" class="fileInput"><br> <br>
                    --%>
                    <input class= "btnCrear" type="submit" value="Crear cuenta" name="btnCuenta" />
                </form>
            
            </div>
        </div>
        </div>

     
</html>
