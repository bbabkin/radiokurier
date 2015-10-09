$(document).ready(function() {
    var audioSection = $('section#audio');
    var audioWrap =  document.getElementById('audio-wrap');
    $('a.html5').click(function() {
 
        var audio = $('<audio>', {
             controls : 'controls'
        });
	audio.trigger('pause');
 
        var url = $(this).attr('href');
        $('<source>').attr('src', url).appendTo(audio);
	audioWrap.style.visibility = "visible";
	audioWrap.className = "animated fadeInDown";
	audioSection.html(audio);
	audio.trigger('play')
	return false;
    });
    $('#player-close').click(function(){
	var audio = $('<audio>', {
             controls : 'controls'
        });
	audioWrap.className = "animated fadeOutUp";
	audio.trigger('pause');
    
    });
});
