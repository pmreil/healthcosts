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

//= require_tree .

//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require autocomplete-rails

// Loads all Bootstrap javascripts
//= require bootstrap

//= require jquery-tablesorter
//= require jquery-tablesorter/addons/pager/jquery.tablesorter.pager

//= require FeedEk

$(function() {

  $.extend($.tablesorter.themes.bootstrap, {
    // these classes are added to the table. To see other table classes available,
    // look here: http://twitter.github.com/bootstrap/base-css.html#tables
    table      : 'table table-bordered',
    header     : 'bootstrap-header', // give the header a gradient background
    footerRow  : '',
    footerCells: '',
    icons      : '', // add "icon-white" to make them white; this icon class is added to the <i> in the header
    sortNone   : 'bootstrap-icon-unsorted',
    sortAsc    : 'icon-chevron-up',
    sortDesc   : 'icon-chevron-down',
    active     : '', // applied when column is sorted
    hover      : '', // use custom css here - bootstrap class may not override it
    filterRow  : '', // filter row class
    even       : '', // odd row zebra striping
    odd        : ''  // even row zebra striping
  });


$('#stateList').change(function() {
  var url = $('#stateList').val(); // get selected value
  if (url) { // require a URL
    window.location = url; // redirect
  }
  return false;
});

$('#regionList').change(function() {
  var url = $('#regionList').val(); // get selected value
  if (url) { // require a URL
    window.location = url; // redirect
  }
  return false;
});

});

