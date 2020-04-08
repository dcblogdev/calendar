<?php
include("includes/config.php");
?>
<!DOCTYPE html>
<html>
 <head>
  <title>Jquery Fullcalandar Integration with PHP and Mysql</title>
  <link href='packages/core/main.css' rel='stylesheet' />
  <link href='packages/daygrid/main.css' rel='stylesheet' />
  <link href='packages/timegrid/main.css' rel='stylesheet' />
  <link href='packages/list/main.css' rel='stylesheet' />
  <script src='packages/core/main.js'></script>
  <script src='packages/interaction/main.js'></script>
  <script src='packages/daygrid/main.js'></script>
  <script src='packages/timegrid/main.js'></script>
  <script src='packages/list/main.js'></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      defaultDate: '<?=date('Y-m-d');?>',
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      selectable: true,
      selectMirror: true,
      events: 'api/load_calendar.php',
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
   
            $.ajax({
                url:"api/insert_calendar.php",
                type:"POST",
                data:{title:title, start:arg.endStr, end:arg.endStr},
            })

        }
        calendar.refetchEvents();
      },
      eventDrop: function(arg) {
        var start = arg.event.start.toDateString()+' '+arg.event.start.getHours()+':'+arg.event.start.getMinutes()+':'+arg.event.start.getSeconds();
        var end = arg.event.end.toDateString()+' '+arg.event.end.getHours()+':'+arg.event.end.getMinutes()+':'+arg.event.end.getSeconds();

        $.ajax({
          url:"api/update_calendar.php",
          type:"POST",
          data:{id:arg.event.id, start:start, end:end},
        })
      },
      eventResize: function(arg) {
        var start = arg.event.start.toDateString()+' '+arg.event.start.getHours()+':'+arg.event.start.getMinutes()+':'+arg.event.start.getSeconds();
        var end = arg.event.end.toDateString()+' '+arg.event.end.getHours()+':'+arg.event.end.getMinutes()+':'+arg.event.end.getSeconds();

        $.ajax({
          url:"api/update_calendar.php",
          type:"POST",
          data:{id:arg.event.id, start:start, end:end},
        })
      },
      eventClick: function(arg) {
        if(confirm("Are you sure you want to remove it?")) {
            $.ajax({
                url:"api/delete_calendar.php",
                type:"POST",
                data:{id:arg.event.id},
            })          
        }
        calendar.refetchEvents();
      }
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>



 </head>
 <body>
  <br />
  <h2 align="center"><a href="#">Calandar</a></h2>
  <br />
  <div class="container">
   <div id="calendar"></div>
  </div>
 </body>
</html>
