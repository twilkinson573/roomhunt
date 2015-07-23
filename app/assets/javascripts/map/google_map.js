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
  var rooms = window.rooms
  map.plot_room_locations
}

function plot_room_locations(){
    if (window.rooms) {
        rooms.forEach(function(coord) {
            map.addMarker(parseFloat(coord.latitude),
                          parseFloat(coord.longitude));
        });
    }
}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
  '&libraries=drawing'+
  '&callback=initialize';
  document.body.appendChild(script);
}
