$(function(){
  $('.next-slide').children().last().val("false");
	$('.next-slide').click(function(){
		$(this).children().last().val("true");
	});
});