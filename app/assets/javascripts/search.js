$(function() {
  var mapOptions = {
    zoom: 2,
    center: new google.maps.LatLng(0, 0)
  };

  if (document.getElementById('map-results-canvas') != null) {
    window.map = new google.maps.Map(document.getElementById('map-results-canvas'), mapOptions);
  }

  $("#search-form").submit(function(e) {
    e.preventDefault();

    var searchQuery = $("#search").val();
    console.log(searchQuery)
  });
});