$(document).ready(function() {
  nav = $("#nav");
  threshold = nav.offset().top;
  fixedClass = "m--fixed";
  rightClass = "m--right";

  $(window).scroll(function() {
    nav = $("#nav");
    header = $("#header");

    if ($(window).scrollTop() >= threshold) {
      if (!nav.hasClass(fixedClass)) {
        nav.addClass(fixedClass).delay(250).queue(function() {
          nav.addClass(rightClass).dequeue();
        });
        header.css("paddingBottom", "" + nav.outerHeight() + "px");
      }
    } else if (nav.hasClass(fixedClass)) {
      nav.removeClass(fixedClass).delay(250).queue(function() {
        nav.removeClass(rightClass).dequeue();
      });
      header.css("paddingBottom", "0px");
    }
  });
});
