//= require jquery
//= require ./vendor/json2
//= require ./vendor/numeral
//= require ./vendor/moment
//= require ./vendor/jquery.noty
//= require js-routes
//= require ./vendor/jquery.modal
//= require users
//= require_self
//= require ./vendor/bootstrap
//= require jquery_ujs

//= require jquery-tablesorter/jquery.metadata
//= require jquery-tablesorter/jquery.tablesorter
//= require jquery-tablesorter/jquery.tablesorter.widgets
//= require jquery.backstretch
//= require responsive-tables

$(function(){
	$("#myTable").tablesorter({
    theme : 'default',

    sortList : [[0,0],[1,0]],
    
    dateFormat : "mmddyyyy", // set the default date format

    //Sorts empty cells as if the cell has the value equal to zero.
    emptyTo: 'none',

    // header layout template; {icon} needed for some themes
    headerTemplate : '{content}{icon}',

    // initialize zebra striping and column styling of the table
    widgets : ["zebra", "columns"],

    widgetOptions : {
      // change the default column class names
      // primary is the first column sorted, secondary is the second, etc
      columns : [ "primary", "secondary", "tertiary" ],
      // include thead when adding class names
      columns_thead : true,
      // include tfoot when adding class names
      columns_tfoot : true,
      resizable_addLastColumn : true

      }
    });

//Backstretch plugin: Slideshow
  $.backstretch([
    "/assets/surf_pic.jpg",
    "/assets/nz_pic.jpg",
    "/assets/money_pic.jpg",
    "/assets/Branson.jpg",
    "/assets/Success-on-Lake.jpg",
    "/assets/success22.jpg",
    "/assets/success_bg.jpg",
    "/assets/night-of-love.jpg",
    "/assets/5-handling-success.jpg",
    "/assets/applestevejobs.jpeg",
   ], {duration: 3100, fade: 1100});

//Backstretch plugin: Click on a button to show a picture
  $("#1").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/surf_pic.jpg");
  });
  $("#2").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/nz_pic.jpg");
  });
  $("#3").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/money_pic.jpg");
  });
  $("#4").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/Branson.jpg");
  });
  $("#5").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/Success-on-Lake.jpg");
  });
  $("#6").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/success22.jpg");
  });
  $("#7").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/success_bg.jpg");
  });
  $("#8").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/night-of-love.jpg");
  });
  $("#9").click(function(e) {
    e.preventDefault();
    $.backstretch("/assets/5-handling-success.jpg");
  }); 
  $("#10").click(function(e) {
      e.preventDefault();
      $.backstretch("/assets/applestevejobs.jpeg");
  });

  //Fade out notices 
  $('#flash').fadeOut(4000);
});



