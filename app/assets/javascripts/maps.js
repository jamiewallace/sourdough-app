$(function(){
  var map;

  function openWindow(marker, contentString){
    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });
    infowindow.open(map, marker)
  }

  function renderUsersPosition(){
    $.each(window.users, function(index, user){
      var marker = new google.maps.Marker({
          map: map,
          position: new google.maps.LatLng(user.lat, user.lon)
      });

      google.maps.event.addListener(marker, 'click', function() {
        string = "<img src='"+user.avatar.url+"' width='50'><p>"+user.first_name+"</p>"
        openWindow(marker, string)
      });
    })
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
      zoom: 12,
      center: new google.maps.LatLng(51.508315, -0.103683)
    };
    map = new google.maps.Map(document.getElementById('map-canvas-global'),
        mapOptions);
    renderUsersPosition()
  }

  initialize();
  
  
})

// // function computeDistanceBetween() {
//     var website visitor =
//     var sourdough members = 
// }


