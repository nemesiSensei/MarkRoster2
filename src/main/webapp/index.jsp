<%-- 
    Document   : index
    Created on : 12/09/2021, 10:48:51 AM
    Author     : NEMESIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>MarkRoster - Inicio</title>
    <meta content="" name="description">
  <meta content="" name="keywords">  
  <link rel="icon" href="media/imagenes/MarkRosterlogo.png">
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
   <link href="assets/css/style.css" rel="stylesheet">
   <link href="assets/vendor/aos/aos.css" rel="stylesheet">  
  </head>  
   <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">
     <div class="logo">
         <img src="media/imagenes/logo2.png" width="auto" height="45"/>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
         </div>
      <nav id="navbar" class="navbar">      
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
          <li><a class="nav-link scrollto" href="#about">Acerca de MarkRoster</a></li>
          <li><a class="nav-link scrollto" href="#services">Módulos</a></li>
<li><a class="nav-link scrollto" href="#benefits">Beneficios</a></li>         
          <li><a class="nav-link scrollto" href="#team">Equipo</a></li>
          <li><a class="nav-link scrollto" href="#pricing">Planes</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contacto</a></li>          
          <li><a class="getstarted scrollto" href="http://192.168.0.15:8080/MarkRoster/iniciarSesion.jsp">Iniciar Sesión</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>   
  </header>
  <br>
  <br>
  <br>  
  <section id="hero" class="d-flex align-items-center">  
    <div class="container">
      <div class="row">
        <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">Gestiona los horarios de tu personal con MarkRoster</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Aplicación web dedicada al control de horarios, implementada por un equipo de talentosos desarrolladores</h2>
          <div data-aos="fade-up" data-aos-delay="800">
            <a href="#about" class="btn-get-started scrollto">Mas información</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
          <img src="media/imagenes/fondo de pantalla.png" class="img animated rounded mx-auto d-block" alt="" height="400" width="auto">
        </div>
      </div>
    </div>
  </section><!-- End Hero -->
  <br>
  <br>
  <br>  
  <main id="main">
    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients clients">
      <div class="container">
      <h3>Nuestros clientes</h3>
        <div class="row d-flex justify-content-center">		
          <div class="col-lg-2 col-md-4 col-6">
            <img src="media/imagenes/logoimpakto.png"  class="img-fluid" alt="" data-aos="zoom-in">
          </div>
          <div class="col-lg-2 col-md-4 col-6">
            <a href="https://unloft.co/"><img src="media/imagenes/logoUnloft1.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100"></a>
          </div>
          <div class="col-lg-2 col-md-4 col-6">
            <a href=""><img src="media/imagenes/kalu.jpeg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100"></a>
          </div>
          <div class="col-lg-2 col-md-4 col-6">
            <img src="media/imagenes/logoargoti.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="200">
          </div>
        </div>
      </div>
    </section>
    <section id="about" class="about">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Acerca de MarkRoster</h2>
        </div>
        <div class="row content">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
            <p>
              MarkRoster es una marca dedicada al control de horarios por medios  móviles 
          (usando el teléfono móvil), con desarrolladores
          capacitados en diferentes tecnologías (Java, HTML, CSS, MySQL, entre otras) con 
          el ánimo de brindar soluciones eficientes de control de acceso de personal, ya sea 
          corporativo e/o institucional, y de cálculo de horarios para asistencia y control
          de nómina, con interfaces intuitivas y amigables con el usuario y haciendo uso de 
          aplicaciones basadas en web, lo que garantiza su portabilidad y compatibilidad con
          multiples dispositivos, y su uso unipersonal e higiénico.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Contamos con desarrolladores egresados del SENA</li>
              <li><i class="ri-check-double-line"></i> El sistema cuenta con estabilidad de red</li>
              <li><i class="ri-check-double-line"></i> Su uso unipersonal garantiza la no infección por SARS COV-2</li>
            </ul>            
          </div>
          <div class="col-lg-6 pt-0 pt-lg-0" data-aos="fade-up" data-aos-delay="200">
          <img src="media/imagenes/acerca1.png" class="rounded mx-auto d-block" alt="" height="360" width="auto">
          <br>           
           <br>
           <br>
           <br> 
          </div>
        </div>
      </div>
    </section>
    <section id="counts" class="counts">
      <div class="container">
        <div class="row">
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-xl-start" data-aos="fade-right" data-aos-delay="150">
            <img src="media/imagenes/usuarios2.png" alt="" class="img-fluid">
          </div>
          <div class="col-xl-7 d-flex align-items-stretch pt-4 pt-xl-0" data-aos="fade-left" data-aos-delay="300">
            <div class="content d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-emoji-smile"></i>
                    <span data-purecounter-start="0" data-purecounter-end="4" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>Clientes Felices</strong> Nuestros clientes han encontrado apoyo y soporte en nuestros productos.</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-journal-richtext"></i>
                    <span data-purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="1" class="purecounter"></span>
                    <p><strong>Proyectos</strong> MarkRoster pertenece a una extensa lista de aplicaciones en desarrollo, con soluciones para casi cualquier ámbito y el soporte de Valhalla Technologies.</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-clock"></i>                    
                    <p><strong>Precisión</strong> MarkRoster garantiza la precision en el cálculo de los horarios de los empleados de su empresa.</p>
                  </div>
                </div>
                <div class="col-md-6 d-md-flex align-items-md-stretch">
                  <div class="count-box">
                    <i class="bi bi-award"></i>                    
                    <p><strong>Competitividad</strong> MarkRoster se perfila a futuro como una app líder en el mercado de control de asistencias y horarios</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="services" class="services">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Módulos</h2>
          <p>MarkRoster brinda servicios especializados para el control de accesos de personal y calculo de horas laborales.</p>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a href="">Conectividad</a></h4>
              <p class="description">MarkRoster se ejecuta en un entorno de red local, lo que garantiza la presencialidad de sus empleados en sus sitios de trabajo.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4 class="title"><a href="">Registro</a></h4>
              <p class="description">Cada acción de entrada y salida es registrada en el sistema, brindando informacion detallada sobre el horario de su talento humano.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4 class="title"><a href="">Rapidez</a></h4>
              <p class="description">El uso web de MarkRoster y su rápida velocidad de reacción garantiza que no haya filas de empleados al llegar a trabajar, ahorrando tiempo y dinero.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="bx bx-world"></i></div>
              <h4 class="title"><a href="">Soporte técnico</a></h4>
              <p class="description">Contamos con soporte técnico remoto en cualquier parte de colombia, y soporte presencial en la ciudad de Bogotá.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="benefits" class="features">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Beneficios</h2>
          <p>Algunas de las ventajas de adquirir los servicios de MarkRoster</p>
        </div>
        <div class="row" data-aos="fade-up" data-aos-delay="300">
          <div class="col-lg-3 col-md-4">
            <div class="icon-box">
              <i class="ri-store-line" style="color: #ffbb2c;"></i>
              <h3><a href="">Facilidad de compra</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
              <h3><a href="">Datos estadísticos precisos</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
              <h3><a href="">Horarios confiables</a></h3>
            </div>
          </div>          
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-database-2-line" style="color: #47aeff;"></i>
              <h3><a href="">Gestion de base de datos SQL</a></h3>
            </div>
          </div>          
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-file-list-3-line" style="color: #11dbcf;"></i>
              <h3><a href="">Reportes confiables</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-price-tag-2-line" style="color: #4233ff;"></i>
              <h3><a href="">Experiencia multi usuario</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-anchor-line" style="color: #b2904f;"></i>
              <h3><a href="">Estabilidad de aplicación</a></h3>
            </div>
          </div>          
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-base-station-line" style="color: #ff5828;"></i>
              <h3><a href="">Conectividad garantizada</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-fingerprint-line" style="color: #29cc61;"></i>
              <h3><a href="">Uso unipersonal</a></h3>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="testimonials" class="testimonials section-bg">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>TESTIMONIOS</h2>
          <p>Opiniones sobre el uso de MarkRoster por parte de nuestros clientes</p>
        </div>
        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">          
            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="media/imagenes/omar.jpg" class="testimonial-img" alt="">
                  <h3>Omar Millán</h3>
                  <h4>Ceo &amp; Fundador de Impakto producciones S.A.S.</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Nuestra experiencia en el uso de la app ha sido gratificante, facil de usar y solo requiere unos segundos para registrar los horarios, Sigan con el buen trabajo!.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
                </div>
                </div>
                 <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="media/imagenes/adriana.jpg" class="testimonial-img" alt="">
                  <h3>Adriana Argotty</h3>
                  <h4>Ceo &amp; Fundadora de Unloft produccion de marca S.A.S.</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                   Buenísima app, así se puede controlar mejor el horario de mis empleados, además que la fila de la mañana para marcar huella es cosa del pasado.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                  </div>
                </div>
                </div>
                <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="media/imagenes/valentina.jpeg" class="testimonial-img" alt="">
                  <h3>Valentina Virguez</h3>
                  <h4>Ejecutiva en Area de talento humano en KALU Producciones</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Me gustó mucho la app, es fácil de usar y gestiono mejor los horarios de los empleados.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
                </div>
                </div>
                 <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="media/imagenes/miguelangel.jpg" class="testimonial-img" alt="">
                  <h3>Miguel Argotty</h3>
                  <h4>Ceo &amp; Fundador de Argoti grupo de diseño S.A.S.</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    Me gusta tener el control sobre la puntualidad de mi personal, y que basado en su actividad, el pago de sus salarios sea el correcto. Gracias por esta buena aplicación.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
               </div>   
            </div>
             <div class="swiper-pagination"></div>
        </div>
      </div>             
    </section>
    <section id="team" class="team section-bg">
      <div class="container align-content-center" >
        <div class="section-title" data-aos="fade-up">
          <h2>Equipo de desarrollo</h2>
          <p>MarkRoster cuenta con un equipo de analistas y desarrolladores egresados del SENA, que garantizan la calidad y robustez de la app y de muchos otros proyectos, personales o corporativos.</p>
        </div>
        <div class="row d-flex justify-content-center">
          <div class="col-lg-3 col-md-6 d-flex align-content-center">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="media/imagenes/sebasmendez.jpeg" class="img-fluid" alt="">
                <div class="social">                  
                  <a href="https://github.com/sebas1000383"><i class="bi bi-github"></i></a>
                  <a href="https://www.linkedin.com/in/sebastian-mendez-montealegre-3a448a20b/"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sebastián Méndez</h4>
                <span>Desarrollo Backend y BD</span>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="media/imagenes/juanjimenez.jpeg" class="img-fluid" alt="">
                <div class="social">                  
                  <a href="https://github.com/nemesiSensei"><i class="bi bi-github"></i></a>
                  <a href="https://www.linkedin.com/in/juan-david-jim%C3%A9nez-franco-276675206/"><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Juan Jiménez</h4>
                <span>Desarrollo Frontend y diseño gráfico</span>
              </div>
            </div>
          </div>
          </div>       
      </div>
    </section><!-- End Team Section -->
    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">
        <div class="section-title">
          <h2>Planes y precios</h2>
          <p>Ofrecemos periodos de prueba gratuitos y licencias mensuales y anuales para la mejor experiencia</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
              <h3>Prueba</h3>
              <h4><sup>$</sup>0</h4>
              <ul>
                <li>Uso limitado</li>
                <li>1 mes de validez</li>
                <li>Publicidad de sponsors</li>
                <li class="na">Uso completo</li>
                <li class="na">Soporte especializado</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Pedir ahora</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <h3>Mensual</h3>
              <h4><sup>$</sup>19,99<span> / mes</span></h4>
              <ul>
                <li>Uso completo</li>
                <li>Validez Mensual</li>
                <li>Sin publicidad</li>
                <li>Soporte técnico</li> 
                <li>Licencia renovable</li>              
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Comprar</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
            <div class="box recommended" data-aos="zoom-in-left" data-aos-delay="200">
              <h3>Anual</h3>
              <h4><sup>$</sup>110<span> / anual</span></h4>
              <ul>
                <li>Uso completo</li>
                <li>Validez Anual</li>
                <li>Sin publicidad</li>
                <li>Soporte técnico</li>
                <li>Licencia auto-renovable</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Comprar</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Pricing Section -->
    <!-- ======= F.A.Q Section ======= -->
    <section id="faq" class="faq">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Preguntas Frecuentes</h2>
        </div>
        <div class="row faq-item d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-5">
            <i class="ri-question-line"></i>
            <h4>¿Puedo usar MarkRoster desde cualquier lugar?</h4>
          </div>
          <div class="col-lg-7">
            <p>
              Para garantizar la presencialidad de los usuarios en sus locaciones de trabajo, MarkRoster limita el uso de la app al alcance efectivo de la red de la institución cliente.
            </p>
          </div>
        </div><!-- End F.A.Q Item-->

        <div class="row faq-item d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
          <div class="col-lg-5">
            <i class="ri-question-line"></i>
            <h4>¿que pasa si olvido registrar mi horario?</h4>
          </div>
          <div class="col-lg-7">
            <p>
              Los usuarios deben ser muy cuidadosos con el registro de sus horarios, si un dia no se registra, el sistema lo omitirá y se debe contactar al administrador del sistema via e-mail para solucionar el problema.
            </p>
          </div>
        </div><!-- End F.A.Q Item-->
        <div class="row faq-item d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
          <div class="col-lg-5">
            <i class="ri-question-line"></i>
            <h4>¿tengo que instalar la app? y de ser así, ¿que dispositivos son compatibles?</h4>
          </div>
          <div class="col-lg-7">
            <p>
              MarkRoster es una app basada en web, por tanto no hay que instalarla, y se accede a ella a través del navegador web, por lo tanto es compatible con cualquier dispositivo o sistema operativo que cuente con navegador compatible con html5 (Chrome, Edge, Firefox, Opera, Safari, entre muchos otros).
            </p>
          </div>
        </div><!-- End F.A.Q Item-->
        <div class="row faq-item d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="500">
          <div class="col-lg-5">
            <i class="ri-question-line"></i>
            <h4>¿Los empleados deben pagar por el uso de la app?</h4>
          </div>
          <div class="col-lg-7">
            <p>
              De ninguna manera, el pago por el uso de la app está reservado a la empresa y los usuarios registrados en ella son libres de usarla mientras la licencia permanezca válida
            </p>
          </div>
        </div><!-- End F.A.Q Item-->
      </div>
    </section><!-- End F.A.Q Section -->
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="section-title" data-aos="fade-up">
          <h2>Contáctenos</h2>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="contact-about">
             <img src="media/imagenes/contacto2.png"  width="350" height="auto"></img>                         
            </div>
          </div>
          <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
            <div class="info">
              <div>
                <i class="ri-map-pin-line"></i>
                <p>Calle 11c Sur #23-18 Este<br>Bogotá, Colombia</p>
              </div>
              <div>
                <i class="ri-mail-send-line"></i>
                <p>jdjimenez9378@misena.edu.co</p>
                <p>smendez67@misena.edu.co</p>
              </div>              
              <div>
                <i class="ri-phone-line"></i>
                <p>+57 3227147140</p>
                <p>+57 3203334385</p>
              </div>
            </div>
          </div>
          <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Tu Nombre" required>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Tu Email" required>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto" required>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" placeholder="Mensaje" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Cargando</div>
                <div class="error-message"></div>
                <div class="sent-message">Tu mensaje ha sido enviado. Gracias!</div>
              </div>
              <div class="text-center"><button type="submit">Enviar Mensaje</button></div>
            </form>
          </div>
        </div>
      </div>
    </section><!-- End Contact Section -->
  </main><!-- End #main -->
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>    
     <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>  
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>  
  <script src="assets/js/main.js"></script> 
      <%@include file="footer.jsp"%>
    </html>
