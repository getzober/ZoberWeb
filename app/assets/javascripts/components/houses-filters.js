class HousesFilters {
  constructor() {
    this.content = houseFilterDropdownContent
    this.$active = null
    this.selections = {}
  }

  toggleFilterDropdown($filter) {
    this._removeDropdown()
    if (this.$active !== $filter) {
      $filter.classList.add('filter-active')
      this._propogateContent($filter)
      this.$active = $filter
    }
  }

  selectOption(selection) {
    let filter = selection.parentElement.parentElement
    if (this.selections[filter.id] === selection.textContent) {
      this.selections[filter.id] = undefined
      selection.classList.remove('selected')
    } else {
      this.selections[filter.id] = selection.textContent
      selection.classList.add('selected')
    }
  }

  _removeDropdown() {
    if (this.$active && this.$active.lastChild.tagName === 'DL') {
      this.$active.removeChild(this.$active.lastChild)
    }
  }

  _propogateContent($filter) {
    if ($filter.id === 'distance') { 
      return 
    } else if ($filter.id === 'price-low' || $filter.id === 'price-high') {
      return
    } else {
      let options = document.createElement('DL')
      options.classList.add('filter-selections')
      let key = this._formatKey($filter.id)
      this.content[key].forEach((value) => {
        let option = this._formatDropdownOption(value)
        options.appendChild(option)
      })
      $filter.appendChild(options)
    }
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

  _formatDropdownOption(content='') {
    let option = document.createElement('DT')
    option.textContent = content
    option.classList.add('filter-selection')
    return option
  }

}
