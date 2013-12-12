function initialize() {
  var mapOptions = {
    center: new google.maps.LatLng(51.505829, -0.108984),
    zoom: 14
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
}
google.maps.event.addDomListener(window, 'load', initialize);
