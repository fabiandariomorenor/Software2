$(document).ready(function () {
    $(".header .menu a").mouseenter(function () {
        $(this).stop().animate({"opacity":1},200);
    });

    $(".header .menu a").mouseleave(function () {
        $(this).stop().animate({"opacity":0.5},200);
    });
});