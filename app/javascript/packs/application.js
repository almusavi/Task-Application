// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

$(document).ready(function() {

// move up code for up button on added tasks
	$('body').on('click', '.upbutton', function () {
	    var hook = $(this).closest('.task_item').prev('.task_item');
	    if (hook.length) {
	        var elementToMove = $(this).closest('.task_item').detach();
	        hook.before(elementToMove);
	    }
	});

// move down code for down button on added tasks
	$('body').on('click', '.downbutton', function () {
	    var hook = $(this).closest('.task_item').next('.task_item');
	    if (hook.length) {
	        var elementToMove = $(this).closest('.task_item').detach();
	        hook.after(elementToMove);
	    }
	});
// clear form text field after submit
	$('body').on('click', '.form_submit', function (e) {
		setTimeout(
			function()
			{
				$('.form_text_field').val('');

			}, 1000);
	});

});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
