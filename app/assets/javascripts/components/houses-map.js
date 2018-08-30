class HousesMap {
  constructor(params={}) {
    this.mapParent = params.map || document.getElementById('map')
    this.houses = params.houses
    this.housesFilters = params.housesFilters
    this.markers = []
    this.map
    this.placesService
  }

  async initMap(coordinates) {
    this._removeMap()
    let initialCoords = coordinates || this._getInitialCoordinates()
    this.map = new google.maps.Map(this.mapParent, {
      center: initialCoords,
      zoom: 12,
    })
    this.placesService = new google.maps.places.PlacesService(this.map)
  }

  query(input) {
    let req = { query: input, fields: ['geometry'] }
    this.placesService.findPlaceFromQuery(req, this.findAndRenderHouses.bind(this))
  }

  async findAndRenderHouses(results, stat) {
    if (stat == 'OK') {
      if (results[0]) {
        let lat = results[0].geometry.location.lat()
        let lng = results[0].geometry.location.lng()
        let houses = await HousesService.search({ lat, lng })
        houses = this.housesFilters.filter(houses)
        if (houses.data[0]) { 
          this.placeMarkers(houses.data)
          this.houses.render(houses.data)
        } else {
          alert('no results found')
        }
      } else {
        alert('no results found')
      }
    } else { 
      alert('no results found')
    }
  }

  async placeMarkers(houses) {
    let bounds = new google.maps.LatLngBounds()
    houses.forEach((house) => {
      let marker = new google.maps.Marker({
        position: {lat: house.latitude, lng: house.longitude},
        map: this.map,
        //icon: 'home.png'
      })

      this._setMarkerEventListener(marker, house)
      bounds.extend(marker.position)
      this.markers.push(marker)
    })
    this.map.fitBounds(bounds)
    this.map.setZoom(11)
  }

  _getInitialCoordinates() {
    let initialCoords = new google.maps.LatLng(28.39404819, -91.38743867)
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        initialCoords = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
        this.initMap(initialCoords)
      })
    }
    return initialCoords
  }

  _removeMap() {
    while (this.mapParent.firstChild) {
      this.mapParent.removeChild(this.mapParent.firstChild)
    }
  }

  _setMarkerEventListener(marker, house) {
    let infoWindow = this._setInfoWindow(house)
    let mouseover = marker.addListener('mouseover', () => {
      if (infoWindow) {
        infoWindow.open(this.map, marker)
      }
    })
    let mouseout = marker.addListener('mouseout', () => {
      if (infoWindow) {
        infoWindow.close(this.map, marker)
      }
    })
    marker.addListener('click', () => {
      if (infoWindow) {
        google.maps.event.removeListener(mouseout)
        google.maps.event.removeListener(mouseover)
        infoWindow.open(this.map, marker)
        this.map.setZoom(15)
      }
    })
  }

  _setInfoWindow(house) {
    let contentString = `
        <div class='house-marker'>
          <div>
            <p class='house-marker-title'>
              ${house.name}
            </p>
            <p class='house-marker-description'>
              ${house.property_description}
            </p> 
          </div>
      `
    house.images.forEach((image) => {
      contentString += `
        <img class='house-marker-image' src=${image}>
      `
      contentString += '</div>'
    })
    return new google.maps.InfoWindow({ content: contentString})
  }

}
