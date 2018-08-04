// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery2
//= require jquery_ujs
// Sempre inclua
// require turbolinks
//= require materialize
//= require materialize-sprockets
//= require_tree .



$(document).ready(function(){
  
  console.log("Passei aqui");
  
  $('.modal').modal();
  
  $('select').formSelect();

  $('.collapsible').collapsible();

  $('.tabs').tabs();
  
  $('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: false,
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  });
  
  $('.button-collapse').sidenav({
    menuWidth: 300, // Default is 300
    edge: 'left', // Choose the horizontal origin
    closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
    draggable: true, // Choose whether you can drag to open on touch screens,
    onOpen: function(el) { /* Do Stuff */ }, // A function to be called when sideNav is opened
    onClose: function(el) { /* Do Stuff */ }, // A function to be called when sideNav is closed
  });
  
  $('.fixed-action-btn').floatingActionButton({
    direction: 'top', // Direction menu comes out
    hoverEnabled: true, // Hover enabled
    toolbarEnabled: false // Toolbar transition enabled
  });
  
  
  $("#dropdown-trigger").dropdown({
    hover: true,
    coverTrigger: false,
    beloworigin: true
  });

  $('.sidenav').sidenav();
  
  // Sets the active item in the navbar extended
  var pathname = window.location.pathname;
  var pathparts = pathname.split("/");
  if (pathparts[1] != null) {
    $("#".concat(pathparts[1])).addClass("active");
  }
});

//$(document).ready(runfunction);
//$(document).on('page:load', runfunction);
//$(document).on('page:change', runfunction);
//$(window).bind('page:change', runfunction);
//$(document).onload = runfunction;
//window.onload = runfunction;

