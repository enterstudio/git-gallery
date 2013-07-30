// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//

//= require ../../../vendor/assets/theme/js/jquery-1.10.1.min
//= require ../../../vendor/assets/theme/js/bootstrap
//= require ../../../vendor/assets/theme/js/lightbox
//= require ../../../vendor/assets/theme/js/prettify
//= require ../../../vendor/assets/theme/js/main
//= require feature_accordian
//= require_tree .

//$(function(){ $(document).foundation(); });

$(document).ready(function() {
  $('.item1').hide();

  $('.item1:first').show();
  $('.feature').eq(0).addClass('selected');

  $('.feature h2').click(function() {
    $('.feature').removeClass('selected');
    $(this).parent().addClass('selected');

    $('.item1').hide();
    var sel = "#"+$(this).data('name');
    $(sel).show();
    $(sel).carousel();
  });
});