<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
              <!DOCTYPE html>
              <html lang="en">
              <head>
                  <meta charset="UTF-8">
                  <meta name="viewport" content="width=device-width, initial-scale=1.0">
          
                  <!--========== BOX ICONS ==========-->
                  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
          
                  <!--========== CSS ==========-->
                  <link rel="stylesheet" href="assetsw/css/styles.css">
                  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
                  
          
                  <title>Prolabs | Insumos Medicos</title>
              </head>
              <body>
                  <!--========== SCROLL TOP ==========-->
                  <a href="#" class="scrolltop" id="scroll-top">
                      <i class='bx bx-up-arrow-alt scrolltop__icon'></i>
                  </a>
                  
                  <!--========== HEADER ==========-->
                  
          
                  <main class="l-main">
                      <!--========== HOME ==========-->
                      <section class="home" id="home">
                          <div class="home__container bd-container bd-grid">
                              <div class="home__img">
                                  <img src="assetsw/img/logo.png" alt="">
                              </div>
          
                              <div class="home__data">
                                  <h1 class="home__title">Prolabs</h1>
                                  <p class="home__description">Somos una industria especializada en la fabricación y comercialización de insumos
                                      médicos hospitalarios, la cual cuenta con un equipo de alto desempeño que suma años
                                      de liderazgo y un amplio conocimiento en la administración de proyectos en búsqueda
                                      de la protección y salud de los colombianos.</p>
                              </div>   
                          </div>
                      </section>
          
                      <!--========== SHARE ==========-->
                      <section class="share section bd-container" id="share">
                          <div class="share__container bd-grid">
                              <div class="share__data">
                                  <h2 class="section-title-center">Misión</h2>
                                  <p class="share__description">Somos una empresa colombiana que brinda soluciones integrales en el área de la salud
                                      mediante el desarrollo, la fabricación y comercialización de insumos médicos
                                      hospitalarios para dar protección y seguridad a través de un equipo altamente
                                      calificado.</p>
                              </div>
          
                              <div class="share__img">
                                  <img src="assetsw/img/img2.png" alt="">
                              </div>
                          </div>
          
          
                          <div class="share__container bd-grid">
                              <div class="share__data">
                                  <h2 class="section-title-center">Visión</h2>
                                  <p class="share__description">En el año 2026 ser la empresa líder en el desarrollo, innovación y distribución de
                                      productos de uso médico hospitalario buscando impactar positivamente la Comunidad.</p>
                                  
                              </div>
          
                              <div class="share__img">
                                  <img src="assetsw/img/img1.png" alt="">
                              </div>
                          </div>
                      </section>
          
                      <!-- My Services Section Start 
           <section class="services section bd-container" id="services">
              <div class="content">
                  <h2 class="section-title">Nuestros Servicios</h2>
                <div class="boxes">
                  <div class="box">
                    <div class="icon">
                      <i class="fas fa-desktop"></i>
                  </div>
                  <div class="topic">Web Devlopment</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
                  <div class="box">
                    <div class="icon">
                      <i class="fas fa-paint-brush"></i>
                  </div>
                  <div class="topic">Graphic Design</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
                  <div class="box">
                    <div class="icon">
                      <i class="fas fa-chart-line"></i>
                  </div>
                  <div class="topic">Digital Marketing</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
                  <div class="box">
                    <div class="icon">
                      <i class="fab fa-android"></i>
                  </div>
                  <div class="topic">Icon Design</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
                  <div class="box">
                    <div class="icon">
                      <i class="fas fa-camera-retro"></i>
                  </div>
                  <div class="topic">Photography</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
                  <div class="box">
                    <div class="icon">
                      <i class="fas fa-tablet-alt"></i>
                  </div>
                  <div class="topic">Apps Devlopment</div>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
                </div>
              </div>
              </div>
            </section>
                      -->
          
                  
          
                  <!--========== SCROLL REVEAL ==========-->
                  <script src="https://unpkg.com/scrollreveal"></script>
          
                  <!--========== MAIN JS ==========-->
                  <script src="assetsw/js/main.js"></script>
              </body>
          </html>
            </div>
        </div>
    </div>
</x-app-layout>
