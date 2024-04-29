<%-- 
    Document   : index
    Created on : 28 abr. 2024, 20:04:30
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleIndex.css">
    <link rel="icon" href="imagenes/growiconoblanco-19.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Inicio | Grow </title>
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

    <section class="banner-container">

        <article class="value-presentation-text">
            <h2>Únete y logra tu libertad financiera</h2>
            <p>Seguridad, crecimiento y desarrollo. Todo en un mismo sitio. Vender seguros nunca fue tan increíble.</p>
        </article>

    
        <aside>
            <img src="imagenes/familia.jpg" alt="banner-image" class="banner-image">
        </aside> 

    </section>


    <section class="header-hook">

        <h1>Descubre lo que te ofrecemos</h1>
        <div class="custom-shape-divider-bottom-1714073833">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
            </svg>
        </div>
    </section>

    <!-- Sección donde se muestran artículos de características de la compañía-->
    <section class="products">

        <article class="seguridad-product">
            <h1>Seguridad</h1>
            <p>El mejor ambiente de trabajo en la región.</p>
        </article>

        <article class="crecimiento-product">
            <h1>Crecimiento</h1>
            <p>Logra tu libertad económica con nosotros..</p>
        </article>

        <article class="desarrollo-product">
            <h1>Desarrollo</h1>
            <p>Aprende en un equipo de trabajo de profesionales con
                experiencia.
            </p>
        </article>

    </section>
    
    <section class="header-hook-2">

        
    </section>

    <section class="testimonio-container">
        
        <div class="custom-shape-divider-top-1714073414">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
            </svg>
        </div>
        <div class="testimonio-video">
            
            <video autoplay muted loop width="200px" >

                <source src="../webapp/videos/WhatsApp Video 2024-04-25 at 11.17.28.mp4">
                
            </video>                
        </div>
        <div class="testimonio-quote">
            <h1>"Grow me abrió las puertas del éxito" - Napoleon Bringas</h1>

        </div>
    </section>
 


    <footer>


    </footer>

</body>
</html>
