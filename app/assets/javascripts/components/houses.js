class Houses {
  constructor() {
    this.$houses = document.getElementById('houses')
  }

  render(houses) {
    if (!houses) { return }
    this._removeHouses()    
    for (let i = 0; i < houses.length; i++) {
      let house = document.createElement('A')
      house.href = `houses/${houses[i].id}`
      let houseImg = document.createElement('IMG')
      houseImg.src = houses[i].images[0] || '../../images/ring3large.png'
      houseImg.classList.add('house-image')
      houseImg.id = `house-${houses[i].id}`
      house.appendChild(houseImg)
      this.$houses.prepend(house)
    }
  }

  _removeHouses() {
    while (this.$houses.children.length > 0) {
      this.$houses.removeChild(this.$houses.firstChild)
    }
  }
}
