class HousesMap {
  constructor(params={}) {
    this.mapParent = params.map || document.getElementById('map')
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
        this.placeMarkers(houses)
      } else {
        alert('No locations found')
      }
    }
  }

  async placeMarkers(houses) {
    if (!houses) { return }
    houses.forEach((house) => {
      this.markers.push(
        new google.maps.Marker({
          position: {lat: house.latitude, lng: house.longitude},
          map: this.map,
        })
      )
    })
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

}
