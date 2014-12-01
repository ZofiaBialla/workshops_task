// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  $('.thumbnail').hover(
    function(){
        $(this).addClass('active');
    
    },
    function(){
        $(this).removeClass('active'); 
    }
  );

});