//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap.min
//= require bootstrap-datepicker
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $('.datepicker').datepicker({
    format: "MM d, yyyy",
    todayHighlight: true,
    disableTouchKeyboard: true,
    autoclose: true
  });

  setTimeout(function() {
    $('.flash').slideUp();
  }, 3000);
});
