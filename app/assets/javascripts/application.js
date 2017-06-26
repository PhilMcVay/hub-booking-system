// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-datepicker
//= require_tree .
//= require moment
//= require fullcalendar





function calendar() {
  $('#calendar').html('');
  return $('#calendar').fullCalendar({

    header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
          },
                defaultView: 'agendaWeek',
                events: '/bookings.json',

          selectable: true,
          selectHelper: true,
          editable: true,
          eventLimit: true,

        eventRender: function(event, element, view) {
            var ntoday = new Date().getTime();
            var eventEnd = moment( event.end ).valueOf();
            var eventStart = moment( event.start ).valueOf();

            if (!event.end){
                if (eventStart < ntoday){
                    element.addClass("past-event");
                    element.children().addClass("past-event");
                }
            } else {
                if (eventEnd < ntoday){
                    element.addClass("past-event");
                    element.children().addClass("past-event");
                }
            }
        }

  });
};
/*function clearCalendar() {
  $('#calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#calendar').html('');
};*/
$(document).on('turbolinks:load', calendar);
//$(document).on('turbolinks:before-cache', calendar)
