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

//= require vue
//= require vue-router 
//= require vue-resource 
//= require vuex 
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery.slick
//= require ckeditor/init
//= require react
//= require react_ujs
//= require axios/dist/axios.min
//= require_tree .
//= require_tree ./services
//= require_tree ./components
//= require scrollReveal

$(function() {
  window.scrollReveal = new scrollReveal();
});
