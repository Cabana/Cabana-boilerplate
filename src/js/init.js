$(document).ready(function () {

    /*
     *   Foundation init
     */
    $(document).foundation();


    /*
    *   Cabana init
    */
    $.Cabana.browser.addHTMLClasses();

    $(window).on('load', function () {

        $('.video-youtube').youtube();
        
    });


    

});
