class HousesListeners {
  constructor() {
    this.houses = new Houses()
    this.housesMap = new HousesMap({ houses: this.houses })
    this.housesFilters = new HousesFilters()
    this.$filters = document.getElementById('filters')
    this.housesMap.initMap()
  }

  addSearch() {
    document.addEventListener('keypress', async (event) => {
      let key = event.which || event.keyCode
      if (key === 13) {
        let $query = document.getElementById('search-value').value
        this.housesMap.query($query)
      }
    })
  }

  addFilterDropdowns() {
    this.$filters.addEventListener('click', (event) => {
      if (event.target.classList.contains('filter')) {
        this._removeFilterDropdowns()
        if (event.target.id === 'price-low') {
          this.housesFilters.showPriceLow()
        } else if (event.target.id === 'price-high') {
          this.housesFilters.showPriceHigh()
        } else if (event.target.id === 'distance') {
          this.housesFilters.toggleDistanceDropdown(event.target)
        } else {
          this.housesFilters.toggleFilterDropdown(event.target)
          this._addFilterSelections(event.target)
        }
      }
    })
  }

  _addFilterSelections(filter) {
    filter.addEventListener('click', (event) => {
      if (event.target.classList.contains('filter-selection')) {
        this.housesFilters.toggleOptionByCheckbox(event.target)
      } else if (event.target.classList.contains('filter-selection-title')) {
        this.housesFilters.toggleOptionByTitle(event.target)
      }
    })
  }

  _removeFilterDropdowns() {
    let $activeFilter = this.$filters.getElementsByClassName('filter-active')[0]
    if ($activeFilter && $activeFilter.id !== 'price-low' && $activeFilter.id !== 'price-high') { $activeFilter.classList.remove('filter-active') }
  }
}
