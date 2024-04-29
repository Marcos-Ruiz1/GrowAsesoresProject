<%-- 
    Document   : servicios
    Created on : 28 abr. 2024, 20:10:44
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/stylesServicios.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>GrowAsesores</title>
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

    <div class="whitespace-banner" >
      <h1></h1>
    </div>
     
      <div class="banner-container">
        <div class= "banner-text-container">
            <h1><strong> Descubre como crecer con GROW </strong> </h1>
        </div>
        <div class= "banner-image-container">
          <img src="imagenes/reunion-juntos.jpg">
        </div>
      
      </div>  


      <div class="services-container">
            
            <div class ="service-1">  
            <div class="service-img-container">
              <img src=".//imagenes/asesoria-oficina.jpg" >
            </div>
            <div class="service-text-container">
              <h1>La mejor <br> asesoría</h1>
              <hr>
              <h4>Conozca mas ></h4>
            </div>
            </div>
        

        <div class ="service-2"> 
          <div class="service-img-container">
            <img src=".//imagenes/trabajo.jpg">
          </div>
          <div class="service-text-container">
            <h1>El trabajo de tus <br> sueños </h1>
            <hr>
            <h4>Conozca mas ></h4>
          </div>
        </div>

        <div class ="service-3"> 
          <div class="service-img-container">
            <img src=".//imagenes/familia.jpg" >
          </div>
          <div class="service-text-container">
            <h1>Seguridad para tu <br> familia</h1>
            <hr>
            <h4>Conozca mas ></h4>
          </div>
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