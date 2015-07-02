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
      streetViewControl: true,
      overviewMapControl: true
  };

  map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
  map.plot_room_locations
}

function plot_room_locations(){}

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
  '&libraries=drawing'+
  '&callback=initialize';
  document.body.appendChild(script);
}
