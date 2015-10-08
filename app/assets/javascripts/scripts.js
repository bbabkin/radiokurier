$(function() {
    var audioSection = $('section#audio');
 
        var audio = $('<audio>', {
             controls : 'controls'
        });
 
        var url = $(this).attr('href');
        $('<source>').attr('src', url).appendTo(audio);
        audioSection.html(audio);
        return false;
    });
