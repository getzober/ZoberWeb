/*
export default class HousesMap {
  constructor(params={}) {
    this.map = params.map || document.getElementById('map')
    this.googleUrlBase = 'https://www.google.com/maps/embed/v1/search?key=AIzaSyDenw_CUWBGti0bby5QPmsK-EnPXyNimH4'
  }

  render(query) {
    this._resetMapChildren()
    let iframe = document.createElement('IFRAME')
    iframe.width = '100%'
    iframe.height = '100%'
    iframe.src = this.googleUrlBase + '&q=' + query
    this.map.appendChild(iframe)
  }

  _resetMapChildren() {
    while (this.map.firstChild) {
      this.map.removeChild(this.map.firstChild)
    }
  }

}
*/
