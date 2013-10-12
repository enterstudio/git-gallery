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

// The following function controls the project preview area

$(".user-project").hover(function () {
  $('.current-description').addClass('no-display');
  $('.current-description').removeClass('current-description');

  var ident = $(this).attr('id');
  var blank = $(".project-full-description").children()[ident];
  $(blank).removeClass("no-display");
  $(blank).addClass('current-description');
});


 // beginning of a function to show the slide information on the right of the page
 // when a new slide becomes active.

var slideController = $(".active").attr('id');
var currentSlide = $('.' + slideController);
currentSlide.removeClass('no-display');

$('.carousel-control').click(function (){
  currentSlide.addClass('no-display');
  slideController = $(".active").attr('id');
  alert(slideController);
  currentSlide = $('.' + slideController);
  alert(currentSlide);
  // currentSlide.removeClass('no-display');
});


// The following function controls the stickiness of the project preview area

$(document).ready(function() { // http://www.pixelbind.com/make-a-div-stick-when-you-scroll/
    var s = $(".blog-categories");
    var pos = s.position();
    $(window).scroll(function() {
        var windowpos = $(window).scrollTop();
        if (windowpos >= pos.top) {
            s.addClass("stick");
        } else {
            s.removeClass("stick");
        }
    });
});
