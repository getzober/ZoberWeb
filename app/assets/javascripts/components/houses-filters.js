class HousesFilters {
  constructor() {
    this.byHighPrice = true
    this.content = houseFilterDropdownContent
    this.$active = null
    this.selections = {
      type: [],
      gender: [],
      roomType: [],
      style: [],
      amenities: [],
      sortBy: [],
    }
  }

  filter(houses) {
    // filter houses by selections
    return(houses)
  }

  showPriceLow() {
    this.byHighPrice = false
    document.getElementById('price-high').classList.remove('filter-active')
    document.getElementById('price-low').classList.add('filter-active')
  }

  showPriceHigh() {
    this.byHighPrice = true
    document.getElementById('price-low').classList.remove('filter-active')
    document.getElementById('price-high').classList.add('filter-active')
  }

  toggleDistanceDropdown($distance) {
    if ($distance.classList.includes('filter-active')) {
      $distance.classList.remove('filter-active')
    } else {
      $distance.classList.add('filter-active')
    }
  }

  toggleFilterDropdown($filter) {
    this._removeDropdown()
    if (this.$active !== $filter) {
      $filter.classList.add('filter-active')
      this._propogateContent($filter)
      this.$active = $filter
    }
  }

  toggleOptionByTitle($option) {
    let filterName = this._formatKey($option.parentElement.parentElement.id)
    let checkBox = $option.lastChild
    if (checkBox.checked) {
      this.removeSelection(filterName, checkBox.value)
      checkBox.checked = false
    } else {
      this.addSelection(filterName, checkBox.value)
      checkBox.checked = true 
    }
  }

  toggleOptionByCheckbox($option) {
    let filterName = $option.parentElement.parentElement.parentElement.id
    if ($option.checked) {
      this.addSelection(filterName, $option.value)
    } else {
      this.removeSelection(filterName, $option.value)
    }
  }

  addSelection(filterName, value) {
    this.selections[filterName].push(value)
  }

  removeSelection(filterName, value) {
    let ind = this.selections[filterName].indexOf(value)
    if (ind > -1) {
      this.selections[filterName].splice(ind, 1)
    }
  }

  _removeDropdown() {
    if (this.$active && this.$active.lastChild.tagName === 'DL') {
      this.$active.removeChild(this.$active.lastChild)
    }
  }

  _propogateContent($filter) {
    let options = document.createElement('DL')
    options.classList.add('filter-selections')
    let key = this._formatKey($filter.id)
    this.content[key].forEach((value) => {
      let option = this._formatDropdownOption(value, $filter.id)
      options.appendChild(option)
    })
    $filter.appendChild(options)
  }

  _formatKey(id) {
    let idWords = id.split('-')
    if (idWords[1]) {
      for (let i = 1; i < idWords.length; i++) {
        idWords[i] = idWords[i].charAt(0).toUpperCase() + idWords[i].slice(1)
      }
    }
    return idWords.join('')
  }

  _formatDropdownOption(content, filterName) {
    let option = document.createElement('DT')
    let checkbox = document.createElement('INPUT')
    checkbox.classList.add('filter-selection')
    checkbox.type = 'checkbox'
    checkbox.name = content
    checkbox.value = content
    let key = this._formatKey(filterName)
    if (this.selections[key].includes(content)) {
      checkbox.checked = true
    }
    option.textContent = content
    option.value = content
    option.appendChild(checkbox)
    option.classList.add('filter-selection-title')
    return option
  }

}
