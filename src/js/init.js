$(document).ready(function () {

    /*
     *   Foundation init
     */
    $(document).foundation();


    /*
    *   Cabana init
    */
    $.Cabana.browser.addHTMLClasses();

    $(document).offcanvas({
        navOpenBtn: '.nav-open',
        navCloseBtn: '.nav-close'
    });

    $(window).on('load', function () {

        $('.video-youtube').youtube();
        
    });


    

});
