<%-- 
    Document   : unirseInicial
    Created on : 28 abr. 2024, 20:11:29
    Author     : Marco Zazueta, Luis Contreras, Raul Luna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unete a nuestro equipo</title>
    
    <link rel="stylesheet" href="css/styleUnirseInicial.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <!--Iconos boobstrap-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="modal" data-bs-target="#myModal" href="#"><i class="fa fa-user" aria-hidden="true"></i></a>
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
                    <form action="iniciar" method="post" name="Formulario de inicio de sesión">
                        <div class="row">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <form>
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

  <!--Container de banner-->
  <div class="banner-container">

    <div class= "banner-image-container">
      <img src="imagenes/abraham-crece.jpg">

    </div>
    <div class="banner-text-container">
      <h1>
        Tu oportunidad de crecer
      </h1>

    </div>

  </div>  

  <!--Container de contenido-->
  <div class="content-container">
    <!-- Container de postularse-->
    <div class="postularse-container">
      <h1>Se parte de la experiencia GROW</h1>
    </div>

    <!--Container del botón-->
    <div class="container-btn">
        <a href="registrarse.jsp">
        <input type="submit" value="Únete a nuestra experiencia" name="btnConocer" style="color: white;" />
      </a>
      
    </div>
  </div>
 
  <!--Footer-->
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 border-top customFooter">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href=""></use></svg>
      </a>
      <span class="mb-3 mb-md-0 text-body-primary" style="color: white;">© Grow Asesores, 2024</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex" style="padding-right: 5%;">
      <li class="ms-3"><a class="text-body-secondary" href="https://www.facebook.com/p/GROW-Asesores-100063754531736/" target="_blank"><img src="icons/facebookIcon.svg" alt="facebook icon" srcset=""></a></li>
      <li class="ms-3"><a class="text-body-secondary" href="https://www.instagram.com/growasesores/" target="_blank"><img src="icons/instragramIcon.svg" alt="instagram icon"></a></li>
      <li class="ms-3"><a class="text-body-secondary" href=""><img src="icons/great-place-to-work-Icon.svg" alt="" srcset=""></a></li>
    </ul>
  </footer>
  

</body>

</html>