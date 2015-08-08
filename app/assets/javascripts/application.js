// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var divElement = $('.content').children()[0];
$(divElement).css("min-width",$(window).width() - $('nav').width());

$(window).resize(function(){
  var divElement = $('.content').children()[0];
  $(divElement).css("min-width",$(window).width() - $('nav').width());
})

if (window.location.pathname != "/") {
  $('h1').fadeIn(400);
  setTimeout(function (){
    $('#details').fadeIn({queue: false, duration: 'fast'});
    $('.viewpoint').fadeIn({queue: false, duration: 'fast'});
    $('#details').animate({ top: "-10px" }, 'fast');
    $('.viewpoint').animate({ top: "10px" }, 'fast');
  }, 300)
}

$(document).on('click', '#happyhealth', function(){
  window.location = '/projects';
  $("a[href='/projects/happyhealth']").trigger("click")
})
