var mapStyle = [
  {
        "featureType": "road",
        "elementType": "geometry",
        "stylers": [
            {
                "lightness": 100
            },
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#C6E2FF"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#C5E3BF"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#D1D1B8"
            }
        ]
    }
]

function gmap1_show() {
  
  handler = Gmaps.build('Google');    // map init
  handler.buildMap({ 
    provider: {
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      styles:    mapStyle,
      center:    new google.maps.LatLng( 43.779908, -79.475008),
      zoom:      16,
      disableDefaultUI: true
    }, 
    internal: {id: 'map1'}
  }, 
  function(){
    marker = handler.addMarkers([    
      {
        "lat": 43.779908,  
        "lng": -79.475008,
        "picture": {
          "url": 'https://s3.amazonaws.com/radiokurier/favicon.png',
          "width":  64,
          "height": 64
        },
        "infowindow": "Corporate Head Office Location"
      }
  ]);

  handler.bounds.extendWith(marker);
  handler.fitMapToBounds();
  handler.getMap().setZoom(17);
  });
}


