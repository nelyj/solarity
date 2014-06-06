// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.nouislider.min
//= require_tree .





$(document).ready(function() {

  $("#slider").noUiSlider({
    start: 40,
    orientation: "vertical",
    range: {
      'min': 0,
      'max': 100
    },
    serialization: {
      format: {
        decimals: 0
      }
    }
  });


  $('#slider').on({
    slide: function(){
     $('#span1').html($("#slider").val());
     $('#span2').html($("#slider").val()*5);
     var colorLabel=(Math.floor($("#slider").val()/3))*8;
     var colorLabel='rgba('+colorLabel+',255,0,0.5)';
     $('#infoSlider').css('background-color',colorLabel);
     $('#infoSlider').css('border-color',colorLabel);
     $('#infoSlider').css('top',(($("#slider").val()*2)-13)+'px');
    },
  });


  $("#home").click(function () {
    $('.simulation').css("background-image","url('/assets/bgHome.png')");
    $(this).toggleClass('btn-link btn-black');
     $('#enterprise').toggleClass('btn-black btn-link');
  });

  $("#enterprise").click(function () {
    $('.simulation').css("background-image","url('/assets/bgEnterprise.png')");
    $(this).toggleClass('btn-link btn-black');
     $('#home').toggleClass('btn-black btn-link');
  });

});

