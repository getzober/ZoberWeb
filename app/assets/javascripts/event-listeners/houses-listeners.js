class HousesListeners {
  constructor() {
    this.housesMap = new HousesMap()
    this.housesFilters = new HousesFilters()
    this.$filters = document.getElementById('filters')
    this.$searchSubmit = document.getElementById('search-submit')
  }

  addSearch() {
    this.housesMap.render()
    this.$searchSubmit.addEventListener('click', (event) => {
      let $query = document.getElementById('search-value').value
      this.housesMap.render($query)
    })
  }

  addFilterDropdowns() {
    this.$filters.addEventListener('click', (event) => {
      this._removeFilterDropdowns()
      this.housesFilters.toggleFilterDropdown(event.target)
      this._addFilterSelections(event.target)
    })
  }

  _addFilterSelections(filter) {
    filter.addEventListener('click', (event) => {
      this.housesFilters.selectOption(event.target)
    })
  }

  _removeFilterDropdowns() {
    let $activeFilter = this.$filters.getElementsByClassName('filter-active')[0]
    if($activeFilter) { $activeFilter.classList.remove('filter-active') }
  }
}
