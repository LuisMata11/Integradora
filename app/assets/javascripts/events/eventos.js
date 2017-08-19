// Función que se ejecuta cuando carga la pagina.
$(document).ready(function () {

  /*  var image = "";
    var result = str.link("https://www.w3schools.com");

  //noinspection JSAnnotator
    $('#calendar1').fullCalendar({
        eventLimit: true, // allow "more" link when too many events
        events: [
            {
                title: 'Grupo Motel',
                start: '2017-09-08',
                end: '2017-09-08',
                result
            },
            {
                title: 'Long Event',
                start: '2017-05-07',
                end: '2017-05-10'
            },
            {
                id: 999,
                title: 'Repeating Event',
                start: '2017-05-09T16:00:00'
            },
            {
                id: 999,
                title: 'Repeating Event',
                start: '2017-05-16T16:00:00'
            },
            {
                title: 'Conference',
                start: '2017-05-11',
                end: '2017-05-13'
            },
            {
                title: 'Meeting',
                start: '2017-05-12T10:30:00',
                end: '2017-05-12T12:30:00'
            },
            {
                title: 'Lunch',
                start: '2017-05-12T12:00:00'
            },
            {
                title: 'Meeting',
                start: '2017-05-12T14:30:00'
            },
            {
                title: 'Happy Hour',
                start: '2017-05-12T17:30:00'
            },
            {
                title: 'Dinner',
                start: '2017-05-12T20:00:00'
            },
            {
                title: 'Birthday Party',
                start: '2017-05-13T07:00:00'
            },
            {
                title: 'Click for Google',
                url: 'http://google.com/',
                start: '2017-05-28'
            }
        ]
    });*/


    var rowCount = false;
    var calendario = "$('#calendar').fullCalendar({" +
        "        eventLimit: true," +
        "        events: [";

    // Recorre cada una de las filas de la tabla.
    $("#tblEventos tbody tr").each(function ()
    {

        // Trae valores de la fila recorrida en la posición 0,1,2.
        var titulo = $(this).find('td:eq(0)').html();
        var fInicio = $(this).find('td:eq(1)').html();
        var fFin = $(this).find('td:eq(2)').html();

        calendario += "{" +
            "                title: '"+titulo+"'," +
            "                start: '"+fInicio+"'," +
            "                end: '"+fFin+"'" +
            "            },"

        rowCount = true;
    });

    // Si existe al menos una fila, cortamos la ultima coma.
    if(rowCount){
        calendario = calendario.substring(0,calendario.length - 1);
    }

    calendario += "]" +
        "    });";

    // Ejecuta código javascript en cadena y lo convierte a codigo.
    eval(calendario);
})

function myFunction() {
    alert('Hola Erika')
}