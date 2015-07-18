if ($('#map-canvas').length > 0) {

  function initialize() {
    var mapOptions = {
      zoom: 10,
      center: new google.maps.LatLng(45.145, 0.2),
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    // Define the LatLng coordinates for the polygon's path.
    var highlightedArea = [
      new google.maps.LatLng(44.958369, 0.162139), // Montpon
      new google.maps.LatLng(45.261492, 0.386384), // Riberac
      new google.maps.LatLng(45.3221086, -0.0522491) // Chalais
    ];

    // Construct the polygon.
    highlightedArea = new google.maps.Polygon({
      paths: highlightedArea,
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.35
    });

    highlightedArea.setMap(map);
  }

  google.maps.event.addDomListener(window, 'load', initialize);
}
