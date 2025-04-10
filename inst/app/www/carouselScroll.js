$(document).ready(function() {
  // introCarousel
  setInterval(function () {
    $('#introCarousel').carousel({
      interval: 8000, // on gère manuellement
      wrap: true       // permet la boucle infinie
    });
  }, 5);

  // Multicarousell
  setInterval(function () {
    $('#multiItemCarousel').carousel({
      interval: 7000, // on gère manuellement
      wrap: true       // permet la boucle infinie
    });
  }, 5);

  // multiItemCarouselDeveloper

  setInterval(function () {
    $('#multiItemCarouselDeveloper').carousel({
      interval: 5000, // on gère manuellement
      wrap: true       // permet la boucle infinie
    });
  }, 5);

  // multiItemCarouselStorage

  setInterval(function () {
    $('#multiItemCarouselStorage').carousel({
      interval: 5000, // on gère manuellement
      wrap: true       // permet la boucle infinie
    });
  }, 5);
})


