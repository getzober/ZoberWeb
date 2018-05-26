function myMap() {
  const mapProp = {
      center: new google.maps.LatLng(37.7576171,-122.4875824),
      zoom: 14,
      styles: [
        {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
        {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
        {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
        {
          featureType: 'administrative.locality',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [{color: '#263c3f'}]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [{color: '#6b9a76'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [{color: '#38414e'}]
        },
        {
          featureType: 'road',
          elementType: 'geometry.stroke',
          stylers: [{color: '#212a37'}]
        },
        {
          featureType: 'road',
          elementType: 'labels.text.fill',
          stylers: [{color: '#9ca5b3'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [{color: '#746855'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [{color: '#1f2835'}]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [{color: '#f3d19c'}]
        },
        {
          featureType: 'transit',
          elementType: 'geometry',
          stylers: [{color: '#2f3948'}]
        },
        {
          featureType: 'transit.station',
          elementType: 'labels.text.fill',
          stylers: [{color: '#d59563'}]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [{color: '#17263c'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [{color: '#515c6d'}]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.stroke',
          stylers: [{color: '#17263c'}]
        }
      ]
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);


  // var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
  var local = 'http://localhost:3000/icon/';
  var icons = {
    zScroll: {
      name: 'zScroll',
      icon: local + 'z_scroll.png'
    },
    zCoffee: {
      name: 'zCoffee',
      icon: local + 'z_coffee.png'
    },
    zHouse: {
      name: 'zHouse',
      icon: local + 'z_house.png'
    }
  };

  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Sober on the Coast</h1>'+
      '<div id="bodyContent">'+
      '<br><a style="color: orange; font-size: 4rem;" href="zober.co">zober.co</a>'+
      '<p><b>Company:</b> Zober LLC' +
      '(303)445-2114'+
      '<p>Bacon ipsum dolor amet spare ribs fatback short loin cow picanha.'+
      ' Prosciutto tri-tip flank, rump shankle burgdoggen filet mignon t-bone strip steak tongue shank. '+
      'Heritage Site.</p>'+

      '<p>Attribution: Uluru, <a style="color: orange;" href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited Jan 10, 2018).</p>'+
      '</div>'+
      '</div>';

  var features = [{
    position: new google.maps.LatLng(37.7576171,-122.4976844),
    type: 'zHouse',
    content: contentString
   }, {
    position: new google.maps.LatLng(37.7576171,-122.4875824),
    type: 'zCoffee',
    content: contentString
   }, {
    position: new google.maps.LatLng(37.7876172,-122.4776854),
    type: 'zHouse',
    content: contentString
   }, {
    position: new google.maps.LatLng(37.7376171,-122.4776874),
    type: 'zHouse',
    content: contentString
   }, {
    position: new google.maps.LatLng(37.7476172,-122.4776844),
    type: 'zHouse',
    content: contentString
  }, {
   position: new google.maps.LatLng(37.7426171,-122.4776874),
   type: 'zScroll',
   content: contentString
  }];




  features.forEach((feature) => {
    var marker = new google.maps.Marker({
      position: feature.position,
      icon: icons[feature.type].icon,
      map: map,
    });

    var infowindow = new google.maps.InfoWindow({
      content: feature.content
    });

    marker.addListener('click', function() {
      infowindow.open(map, marker);
    });
  });

}
