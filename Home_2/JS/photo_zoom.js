let animTime = 1500;
let zoomImg = document.getElementById("zoom_photo");
$('.photo_shirt').hover(function() {
    let src_photo_shirt = $(this).attr('src');
    zoomImg.setAttribute('src', src_photo_shirt);
})
