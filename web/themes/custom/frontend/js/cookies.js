(function ($, Drupal) {
  document.addEventListener('cookiesjsrUserConsent', function (event) {
    var cookies = document.cookie.match("(^|[^;]+)\\s*" + "cookiesjsr" + "\\s*=\\s*([^;]+)");
    cookies = cookies ? cookies.pop() : "{}";

    if (cookies === "{}") {
      $(window).scrollTop(40);
      $('.overlay').show();
    }
    else {
      $('.overlay').hide();
    }
  });
})(jQuery, Drupal);
