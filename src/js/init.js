$(document).ready(function () {

    /*
    *   Fast Click
    */
    FastClick.attach(document.body);

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
