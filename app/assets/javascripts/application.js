// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require best_in_place
//= require turbolinks
//= require bootstrap
//= require masonry/jquery.masonry
//= require tether.min
//= require custom
//= require_tree .

$(function(){

  $('#masonry-grid').masonry({
    itemSelector: '.grid-item',
    isFitWidth: true,
  });
  
  jQuery(".best_in_place").best_in_place();
  
  
  $(document).ready(function() {
    $("#txtDate").keyup(function(){
      if ($(this).val().length == 2){
        $(this).val($(this).val() + "/");
      }
      else if ($(this).val().length == 5){
        $(this).val($(this).val() + "/");
      }
    });
  });
});