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

// require_tree .

// require jquery
//= require jquery_ujs
//= require jquery.ui.tooltip
//= require jquery.ui.autocomplete
//= require jquery-tablesorter
//= require jquery-tablesorter/addons/pager/jquery.tablesorter.pager
//= require autocomplete-rails

$(function() {

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

