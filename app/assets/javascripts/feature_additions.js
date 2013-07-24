$(function(){
	$('.next-slide').click(function(){
		$(this).children().last().val("true");
	});
});