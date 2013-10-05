$('.carousel').carousel('pause');

$('.carousel').each(function() {
  $(this).find('.item:first').addClass('active');
});

$('.item1').hide();
$('.item1:first').show();
$('.feature').eq(0).addClass('selected');

$('.feature h2').click(function() {
  $('.feature').removeClass('selected');
  $(this).parent().addClass('selected');

  $('.item1').hide();

  var sel = "#"+$(this).data('name');
  $(sel).show();
});

$(".user-project").hover(function () {
  $('.current-description').addClass('no-display');
  $('.current-description').removeClass('current-description');

  var ident = $(this).attr('id');
  var blank = $(".project-full-description").children()[ident];
  $(blank).removeClass("no-display");
  $(blank).addClass('current-description');
});
