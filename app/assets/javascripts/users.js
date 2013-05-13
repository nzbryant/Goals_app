$(function(){

	var userModal = $('#user_modal');

	$('.user_listing li').on('click', function(){
		var guid = $(this).attr('data-user-id');

		$.getJSON('/users/' + guid, function(data) {
			var userString = "<p>" + data.name + data.email + "</p>";
			userModal.html(userString);
			userModal.modal();
			console.log(data);
		});

 	});

 });

