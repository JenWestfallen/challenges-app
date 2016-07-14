$(document).ready(function(){
  $('.datepicker').datepicker().on('changeDate', function(ev)
  {                 
   $('.datepicker-dropdown').hide();
 });
});