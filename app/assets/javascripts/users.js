
$('i a.icon-plus-sign').hover(function() {
  var sel = "#"+$(this).data('name');
  $(sel).css("color", "#538187");
}, function() {
  var sel = "#"+$(this).data('name');
  $(sel).css("color", "#dbeaf4");
});