$(document).ready(function() {
  $(".navbar-burger").click(function() {
    $(".navbar-brand").toggleClass("navbar-color");
    $(".navbar-end .navbar-item").toggleClass("navbar-burger-menu");
    $(".navbar-burger").toggleClass("is-active");
    $(".navbar-menu").toggleClass("is-active");
  });
});
