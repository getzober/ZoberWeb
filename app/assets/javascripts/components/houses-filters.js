class HousesFilters {
  constructor() {
    this.types = ['thing']
    this.$active = null
  }

  toggleFilterDropdown($filter) {
    this._removeDropdown()
    if (this.$active !== $filter) {
      $filter.classList.add('filter-active')
      let options = document.createElement('DL')
      this.types.forEach((type) => {
        let option = this._formatDropdownOption(type)
        options.appendChild(option)
      })
      $filter.appendChild(options)
      this.$active = $filter
    }
  }

  selectOption(selection) {

  }

  _removeDropdown() {
    if (this.$active && this.$active.lastChild.tagName === 'DL') {
      this.$active.removeChild(this.$active.lastChild)
    }
  }

  _formatDropdownOption(content) {
    let option = document.createElement('DT')
    option.textContent = content
    option.classList.add('filter-selection')
    return option
  }

}
