var animTime = 1500;
$('.photo').hover(function(e){
    var modal = $('#zoom_shirt');
    modal.css('top', (window.innerHeight - modal.height()) / 2);
    modal.css('left', (window.innerWidth - modal.width()) / 2);
    modal.css('background-image', $(e.target).css('background-image'));
    modal.fadeIn(animTime);
})

$('#zoom_shirt').on('click', function (){
    $(this).fadeOut(animTime);
})
