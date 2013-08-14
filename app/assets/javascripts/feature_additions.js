// $(function(){
//   $('.next-slide').children().last().val("false");
// 	$('.next-slide').click(function(){
// 		$(this).children().last().val("true");
// 	});

//   function rewind()
//   {
//     var form_action = ($('.destroy-on-back').attr('action'));

//     request = $.ajax({

//       url: form_action + "/destroy-on-back",
//       type: "post",
//       data: {"hello"},
//       dataType: "json",
//       //beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
//       success: function(data) {
//         console.log('success we sent data: '+data);
//       }, error: function(request, status, error) {
//         console.log('request: '+request+', status: '+status+', error: '+error);
//       }
//     });
//   }
// });