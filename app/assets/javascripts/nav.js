$(document).ready(function() {
  nav = $("#nav");
  threshold = nav.offset().top;
  fixedClass = "m--fixed";

  $(window).scroll(function() {
    nav = $("#nav");
    header = $("#header");

    if ($(window).scrollTop() >= threshold) {
      if (!nav.hasClass(fixedClass)) {
        nav.addClass(fixedClass);
        header.css("paddingBottom", "" + nav.outerHeight() + "px");
      }
    } else if (nav.hasClass(fixedClass)) {
      nav.removeClass(fixedClass);
      header.css("paddingBottom", "0px");
    }
  });
});
