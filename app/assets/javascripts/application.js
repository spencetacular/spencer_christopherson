// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .

$(document).ready(function() {
    $('select').material_select();
    $(".dropdown-button").dropdown();

    $('.show_info_div').click(function(){
    // Remove Class Way
    // $('.info_div').removeClass('hide');

    // slideToggle Way
    $('.info_div').slideToggle('slow', function(){
      if($('.info_div').is(':hidden')){
        $('.show_info_div').text('Show Info');
      } else {
        $('.show_info_div').text('Hide Info');
      }
    });

    // .show() way
    // $('.info_div').show();

    // toggleClass way
    // $('.info_div').toggleClass('hide');
  });

   //  $('#change_background_blog').click(function(){
	    
	  //   // addClass
	  //   // $('body').addClass('blue-background');

	  //   // toggleClass
	  //   $('body').toggleClass('blog-background');

	  //   // .css - not best practice
	  //   // $('body').css('background-color', 'blue');
	  // });

  });
