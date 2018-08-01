class HousesMap {
  constructor(params={}) {
    this.mapParent = params.map || document.getElementById('map')
    this.markers = []
  }

  initMap() {
    this.map = new google.maps.Map(this.mapParent, {
      center: new google.maps.LatLng(28.39404819, -91.38743867),
      zoom: 8,
    })
  }

  render(query) {
    this._resetMapChildren()
    this.initMap() 
    if (query) { this.placeMarkers(query) }
  }

  async placeMarkers(query) {
    let houses = await HousesService.search(query)  
    houses.forEach((house) => {
      this.markers.push(
        new google.maps.Marker({
          position: {lat: house.latitude, lng: house.longitude},
          map: this.map,
        })
      )
    })
  }

  _resetMapChildren() {
    while (this.mapParent.firstChild) {
      this.mapParent.removeChild(this.mapParent.firstChild)
    }
  }

}
