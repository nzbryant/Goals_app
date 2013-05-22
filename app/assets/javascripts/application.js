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

        $.backstretch([
          "../assets/surf_pic.jpg",
          "../assets/nz_pic.jpg",
          "../assets/money_pic.jpg",
          ], {duration: 3500, fade: 2333});

});
//"../assets/lgu-test.jpg" in an array in $.backstretch([ *your images here*])

//Backstretch - for background

  // To attach Backstrech as the body's background
  //$.backstretch("path/to/image.jpg");

  // You may also attach Backstretch to a block-level element
 //$(".foo").backstretch("path/to/image.jpg");

  // Or, to start a slideshow, just pass in an array of images
          
        


