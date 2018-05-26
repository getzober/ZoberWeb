import React, { Component } from "react";
import { Map, InfoWindow, Marker, GoogleApiWrapper } from 'google-maps-react';

export default class HouseMap extends Component {

  constructor(){
    super();
    this.state = {
    currentLocation: false,
    styles: [
        {
          elementType: 'geometry',
          stylers: [
            {
              color: '#242f3e'
            }
          ]
        }, {
          elementType: 'labels.text.stroke',
          stylers: [
            {
              color: '#242f3e'
            }
          ]
        }, {
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#746855'
            }
          ]
        }, {
          featureType: 'administrative.locality',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#d59563'
            }
          ]
        }, {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#d59563'
            }
          ]
        }, {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [
            {
              color: '#263c3f'
            }
          ]
        }, {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#6b9a76'
            }
          ]
        }, {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [
            {
              color: '#38414e'
            }
          ]
        }, {
          featureType: 'road',
          elementType: 'geometry.stroke',
          stylers: [
            {
              color: '#212a37'
            }
          ]
        }, {
          featureType: 'road',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#9ca5b3'
            }
          ]
        }, {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [
            {
              color: '#746855'
            }
          ]
        }, {
          featureType: 'road.highway',
          elementType: 'geometry.stroke',
          stylers: [
            {
              color: '#1f2835'
            }
          ]
        }, {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#f3d19c'
            }
          ]
        }, {
          featureType: 'transit',
          elementType: 'geometry',
          stylers: [
            {
              color: '#2f3948'
            }
          ]
        }, {
          featureType: 'transit.station',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#d59563'
            }
          ]
        }, {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [
            {
              color: '#1F7491'
            }
          ]
        }, {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#3FB5B9'
            }
          ]
        }, {
          featureType: 'water',
          elementType: 'labels.text.stroke',
          stylers: [
            {
              color: '#17263c'
            }
          ]
        }
      ],
      activeMarker: {},
      selectedPlace: {},
      showingInfoWindow: false,
      markers: [],
      meetups: [{
        name: 'zober-home',
        position: { lat: 37.7576171, lng: -122.4976844 },
        icon: {
          url: 'http://localhost:3000/icon/z_coffee.png',
          anchor: new google.maps.Point(32,32),
          scaledSize: new google.maps.Size(64,64)
        }
       }, {
        name: 'zober-home',
        position: { lat: 37.7576171, lng: -122.4875824 },
        icon: {
          url: 'http://localhost:3000/icon/z_coffee.png',
          anchor: new google.maps.Point(32,32),
          scaledSize: new google.maps.Size(64,64)
        }
       }, {
        name: 'zober-home',
        position: { lat: 37.7876172, lng: -122.4776854 },
        icon: {
          url: 'http://localhost:3000/icon/z_coffee.png',
          anchor: new google.maps.Point(32,32),
          scaledSize: new google.maps.Size(64,64)
        }
       }, {
        name: 'zober-home',
        position: { lat: 37.7376171, lng: -122.4776874 },
        icon: {
          url: 'http://localhost:3000/icon/z_coffee.png',
          anchor: new google.maps.Point(32,32),
          scaledSize: new google.maps.Size(64,64)
        }
       }, {
        name: 'zober-home',
        position: { lat: 37.7476172, lng: -122.4776844 },
        icon: {
          url: 'http://localhost:3000/icon/z_coffee.png',
          anchor: new google.maps.Point(32,32),
          scaledSize: new google.maps.Size(64,64)
        }
      }, {
       name: 'zober-home',
       position: { lat: 37.7426171, lng: -122.4776874 },
       icon: {
         url: 'http://localhost:3000/icon/z_coffee.png',
         anchor: new google.maps.Point(32,32),
         scaledSize: new google.maps.Size(64,64)
       }
     }],
     zoom: 12,
     center: {},
    }

    this.onMarkerClick = this.onMarkerClick.bind(this);
    this.onMapClicked = this.onMapClicked.bind(this);
    this.houseList = this.houseList.bind(this);
  }

componentWillMount() {
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost:3000/api/v1/houses",
    "method": "GET",
  }

  $.ajax(settings)
  .then((homes) => {
    const homesList = homes.map((house, i) => {
      let randLat = 37.7576171 + (0.1 * Math.random());
      let randLng = -122.4875824 + (0.1 * Math.random());
      let houseMarker = {
        name: house.name,
        position: {
          lat: randLat,
          lng: randLng
        },
        content: {},
        icon: {
          url: 'http://localhost:3000/icon/z_house.png',
          anchor: new google.maps.Point(32, 32),
          scaledSize: new google.maps.Size(64, 64)
        }
      }

      for(let prop in house) {
        houseMarker.content[prop] = house[prop];
      }

      return houseMarker
    });

    this.setState({
      markers: homesList
    })

  });
}

onMarkerClick(props, marker, e) {
  this.setState({
    selectedPlace: props,
    activeMarker: marker,
    showingInfoWindow: true
  });
}

onMapClicked(props) {
  if (this.state.showingInfoWindow) {
    this.setState({
      showingInfoWindow: false,
      activeMarker: null
    });
  }
}

houseList(){
  this.setState({center: { lat: 37.7576171, lng: -122.4875823 } });
}

toggleTheme(){
  this.setState({styles: [{
    elementType: 'geometry',
    stylers: [
      {
        color: '#242f3e'
      }
    ]
  }]})
}

  render() {
    let content = undefined;
    return (
      <div>
        <button className='btn-danger'
          onClick={ this.houseList }>Houses</button>

        <Map style={{width: '60%', height: '100%', position: 'relative'}}
          centerAroundCurrentLocation={ true }
          onClick={ this.state.onMapClicked }
          center={ this.state.center }
          google={ window.google }
          zoom={ this.state.zoom }
          styles={ this.state.styles }>

          {
            this.state.markers.map((m, i) => {
              return (
                  <Marker
                    key={ i }
                    content={ m.content }
                    onClick={ this.onMarkerClick }
                    name={ m.name }
                    position={ m.position }
                    icon={ m.icon }
                  />
                )
              })
            }
            {
              this.state.meetups.map((m, i) => {
                return (
                    <Marker
                      key={ i }
                      content={ m.content }
                      onClick={ this.onMarkerClick }
                      name={ m.name }
                      position={ m.position }
                      icon={ m.icon }
                    />
                  )
                })
              }
            <InfoWindow
              marker={this.state.activeMarker}
              visible={this.state.showingInfoWindow}>
              <div className='card mb-2 box-shadow'>
                <h1>Z-house: { this.state.selectedPlace.name }</h1>
                  { content = this.state.selectedPlace.content, console.log(content) }
                  { (content === undefined) ? '' :
                    (  <div className="card-body d-flex flex-column align-items-start">
                      <p><h4>Cost:</h4>{ content.price }</p>

                        <div className="d-inline-block mb-2 text-primary">
                          Amenities
                        </div>
                        <div className="mb-1 text-muted">Jan, 21st</div>
                        <p className="card-text mb-auto"></p>
                        <span>Website<a href="https://zober.co"></a></span>
                        <hr/>
                        <p><h4>Activities: </h4>{ content.activities  }</p>
                        <p><h4>Capacity: </h4>{ content.capacity }</p>
                        <p><h4>Gender: </h4>{ content.gender }</p>
                        <p><h4>Heating: </h4>{ content.heating }</p>
                        <p><h4>A/C: </h4>{ content.ac }</p>
                        <p><h4>hot-tub: </h4>{ content.hotttub }</p>
                        <p><h4>WiFi/internet: </h4>{ content.internet }</p>
                        <p><h4>Parking: </h4>{ content.parking }</p>
                        <p><h4>Pets: </h4>{ content.pets }</p>
                        <p><h4>Smoking: </h4>{ content.smoking_policy }</p>
                        <p><h4>Transportation: </h4>{ content.transportation }</p>
                      </div>)}

              </div>
            </InfoWindow>
        </Map>
      </div>
    );
  }
}
