$(document).ready(function() {
  $('.accordion-heading').click(function() {
    $(this).children('.project-feature-description').toggle();
    $(this).children().last().toggle();
  });
});