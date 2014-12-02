$(document).ready(function(){

  $(".rating:contains('5')").closest(".well").addClass('positive');
  $(".rating:contains('1')").closest(".well").addClass('negative');

});