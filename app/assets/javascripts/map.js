var lat_post = $('post_latitude');
var lng_post = $('post_longitude');

function initMap() {
    var center = {lat: -25.363, lng: 131.044 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 7,
        center: center,
        disableDefaultUI: true
    });
}

jQuery(function($) {
    $(window).resize(function(){ 
        $('#map').height($( window ).height());
    });
});