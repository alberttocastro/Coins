$(document).ready(function(){
    $('.sidenav').sidenav();
    $('.fixed-action-btn').floatingActionButton();
    $('.modal').modal();
});







// // Load the visualization

// google.charts.load('current', {'packages':['corechart']});
// google.charts.setOnLoadCallback(drawPieChart);

//   // Set a callback to run when the Google Visualization API is loaded.
//       google.charts.setOnLoadCallback(drawPieChart);

// // Callback that creates and populates a data table,
//       // instantiates the pie chart, passes in the data and
//       // draws it.
//       function drawPieChart() {

//         // Create the data table.
//         var data = new google.visualization.DataTable();
//         data.addColumn('string', 'Topping');
//         data.addColumn('number', 'Slices');
//         data.addColumn('string','Nut');
//         data.addRows([
//           ['Nigeria', 7,'A'],
//           ['Ghana', 10,'B'],
//           ['USA', 3,'C'],
//           ['England', 1,'D'],
//           ['Australia', 1,'E']
//         ]);

//         // Set chart options
//         var options = {'title':'Countries and our territory',
//                        'width':400,
//                        'height':400,
//                       'is3D':true};

//         // Instantiate and draw our chart, passing in some options.
//         var chart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
//         chart.draw(data, options);
//       }