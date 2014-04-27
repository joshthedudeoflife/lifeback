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
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$(document).ready(function(){
	$('#calendar').fullCalendar({
		events: [
	        {
	            title: 'Call Therapist',
	            start: '2014-04-27'
	        },
	        {
	            title: 'Alcohol Anonymous',
	            start: '2014-04-27 16:30:00',
	            end: '2014-04-27 18:30:00',
	            allDay: false
	        }
	    ],
	    color: 'yellow',   // an option!
	    textColor: 'black', // an option!
        height: 400,
        defaultView: 'agendaDay',
        editable: true
	});
});
