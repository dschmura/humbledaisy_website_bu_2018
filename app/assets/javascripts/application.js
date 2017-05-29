// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery2
//= require plugins/plugins
//= require plugins/jquery.gmaps.min
//= require template-custom
//= require tether
//= require bootstrap
//= require rails-ujs
//= require turbolinks



$(document).on('turbolinks:load', function() {
  var active_elements = $(".navbar-collapse ul li a");
  setActiveLink(active_elements);

  function setActiveLink(active_elements) {
  var path = window.location.pathname;
  path = path.replace(/\/$/, "");
  console.log(active_elements)
  path = decodeURIComponent(path);;
  active_elements.each(function() {
    var href = $(this).attr('href');
    if (path.substring(0, href.length) === href) {
        $(this).closest('a').addClass('active');
    }
  });
}
});


$(document).on('turbolinks:load', function() {
  $('[data-toggle="tooltip"]').tooltip()
  $('.dropdown-toggle').dropdown()
})