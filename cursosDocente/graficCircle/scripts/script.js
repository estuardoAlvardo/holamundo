$(document).ready(function() {
    $(".my-progress-bar").circularProgress({
        line_width: 6,
        color: "#36abcb",
        starting_position: 25, // 12.00 o' clock position, 25 stands for 3.00 o'clock (clock-wise)
        percent: 0, // percent starts from
        percentage: true,
        text: "Lecciones Finalizadas"
    }).circularProgress('animate', 100, 2000);
});


$(document).ready(function() {
    $(".my-progress-bar2").circularProgress({
        line_width: 6,
        color: "#36abcb",
        starting_position: 0, // 12.00 o' clock position, 25 stands for 3.00 o'clock (clock-wise)
        percent: 0, // percent starts from
        percentage: true,
        text: "Tareas Finalizadas"
    }).circularProgress('animate', 70, 2000);
});

$(document).ready(function() {
    $(".my-progress-bar3").circularProgress({
        line_width: 6,
        color: "#03D96E",
        starting_position: 0, // 12.00 o' clock position, 25 stands for 3.00 o'clock (clock-wise)
        percent: 0, // percent starts from
        percentage: true,
        text: "Competencias"
    }).circularProgress('animate', 80, 2000);
});

$(document).ready(function() {
    $(".my-progress-bar4").circularProgress({
        line_width: 6,
        color: "#36abcb",
        starting_position: 0, // 12.00 o' clock position, 25 stands for 3.00 o'clock (clock-wise)
        percent: 0, // percent starts from
        percentage: true,
        text: "Habilidades"
    }).circularProgress('animate', 90, 2000);
});





