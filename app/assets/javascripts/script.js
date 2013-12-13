function define_map_center(){
  if(window.user_location){
    latlng = new google.maps.LatLng(window.user_location.lat, window.user_location.lon);
  }else{
    latlng = new google.maps.LatLng(51.505829, -0.108984);
  }
  return latlng;
}


function initialize() {
  var mapOptions = {
    center: define_map_center(),
    zoom: 14
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
  if(window.user_location){
    var marker = new google.maps.Marker({
        position: define_map_center(),
        map: map,
    });
  }
}
google.maps.event.addDomListener(window, 'load', initialize);
