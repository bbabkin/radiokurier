$(document).ready(function() {
    var audioSection = $('section#audio');
    var audioWrap =  document.getElementById('audio-wrap');
    $('a.html5').click(function() {
 
        var audio = $('<audio>', {
             controls : 'controls'
        });
 
        var url = $(this).attr('href');
        $('<source>').attr('src', url).appendTo(audio);
        audio.play();
	audioWrap.style.visibility = "visible";
	audioWrap.className = "animated fadeInDown";
	audioSection.html(audio);
        return false;
    });
    $('#player-close').click(function(){
	var audio = $('<audio>', {
             controls : 'controls'
        });
	audioWrap.className = "animated fadeOutUp";
	audio.stop();
    
    });
});
