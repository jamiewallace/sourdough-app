$(function(){
  var map;

  function openWindow(marker, contentString){
    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });
    infowindow.open(map, marker)
  }

  function renderUsersPosition(){
    //create empty LatLngBounds object
    var bounds = new google.maps.LatLngBounds();

    $.each(window.users, function(index, user){
      var marker = new google.maps.Marker({
          map: map,
          position: new google.maps.LatLng(user.lat, user.lon)
      });

      //extend the bounds to include each marker's position
      bounds.extend(marker.position);

      google.maps.event.addListener(marker, 'click', function() {
        string = "<img src='"+user.avatar.url+"' width='50'><p>"+user.first_name+"</p>"
        openWindow(marker, string)
      });
    });

    map.fitBounds(bounds);
  }

  //define a latitude longitude for a given address
  function codeAddress(address) {
    geocoder = new google.maps.Geocoder();
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        console.log(results[0].geometry.location)

      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }


  function initialize() {
    var mapOptions = {
      zoom: 2,
      center: new google.maps.LatLng(0, 0)
    };
    map = new google.maps.Map(document.getElementById('map-canvas-global'),
        mapOptions);
    
    renderUsersPosition();
  }

  initialize();
  
  
})

// // function computeDistanceBetween() {
//     var website visitor =
//     var sourdough members = 
// }


