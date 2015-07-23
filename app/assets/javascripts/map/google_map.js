$(window).load(function() {
      loadScript();
});

var map;

function initialize() {
  var mapOptions = {
      center: new google.maps.LatLng(52.364534, 4.898992),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.NORMAL,
      panControl: true,
      scaleControl: false,
      streetViewControl: false,
      overviewMapControl: false
  };

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  plot_room_locations();
}

function plot_room_locations(){
    console.log('horse')
    JSON.parse(rooms).forEach(function(room) {
        console.log(room)
        new google.maps.Marker({
            position: new google.maps.LatLng(room.latitude, room.longitude),
            map: map,
            title: room.location
        });
    });
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
  '&libraries=drawing'+
  '&callback=initialize';
  document.body.appendChild(script);
}
