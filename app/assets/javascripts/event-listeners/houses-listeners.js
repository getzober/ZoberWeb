class HousesListeners {
  constructor() {
    this.housesMap = new HousesMap()
    this.housesFilters = new HousesFilters()
    this.$filters = document.getElementById('filters')
    this.housesMap.initMap()
  }

  addSearch() {
    document.addEventListener('keypress', async (event) => {
      let key = event.which || event.keyCode
      if (key === 13) {
        console.log('yas queen')
        let $query = document.getElementById('search-value').value
        this.housesMap.query($query)
      }
    })
  }

  addFilterDropdowns() {
    this.$filters.addEventListener('click', (event) => {
      if (event.target.classList.contains('filter')) {
        this._removeFilterDropdowns()
        this.housesFilters.toggleFilterDropdown(event.target)
        this._addFilterSelections(event.target)
      }
    })
  }

  _addFilterSelections(filter) {
    filter.addEventListener('click', (event) => {
      if (event.target.classList.contains('filter-selection')) {
        this.housesFilters.selectOption(event.target)
      }
    })
  }

  _removeFilterDropdowns() {
    let $activeFilter = this.$filters.getElementsByClassName('filter-active')[0]
    if($activeFilter) { $activeFilter.classList.remove('filter-active') }
  }
}
