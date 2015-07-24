$(window).load(function() {
      loadScript();
});

var map;

function initialize() {
  var mapOptions = {
      center: new google.maps.LatLng(52.364534, 4.898992),
      zoom: 13,
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
    JSON.parse(rooms).forEach(function(room) {
        var markerColor = setMarkerColor(room.price)
        var myMarker = new google.maps.Marker({
            position: new google.maps.LatLng(room.latitude, room.longitude),
            map: map,
            title: room.location,
            icon: {
                url: 'http://maps.google.com/mapfiles/ms/icons/' +
                     markerColor +
                     '-dot.png'
            }
        });

        var infowindow = new google.maps.InfoWindow({
          content: room.location
        });

        google.maps.event.addListener(myMarker, 'click', function() {
          infowindow.open(map,myMarker);
        });
    });
}

function setMarkerColor(price){
  if (price < 550) {
      return 'green';
  } else if (price > 750) {
      return 'red';
  } else {
      return 'yellow';
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
