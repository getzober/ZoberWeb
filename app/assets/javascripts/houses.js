/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) {
  // BEGIN: Vuex store to contain ajax call for houses (to use globally)
  const store = new Vuex.Store({
    state: {
      facilities: [],
      selectedFilters: ["Dogs"]
    },

    getters: {
      facilities: state => {
        return state.facilities
      },
      selectedFilters: state => {
        return state.selectedFilters
      }
    },

    actions: {
      getList: function ({ commit }) {
        let uri = window.location.search.substring(1);
        let params = new URLSearchParams(uri);
        let userLocation = params.get("user_location") || "San Francisco";

        axios.get('/api/v1/houses/' + userLocation + '.json').then((response) => {
          commit('setHousesList', { list: response.data })
        }, (err) => {
          console.log(err)
        })
      },

      filterHouses: function(house) {
        house.filters.map(function (filter) {
          this.$store.getters.selectedFilters.includes(filter.filter)
        });
      }
    },

    mutations: {
      setHousesList: (state, { list }) => {
        state.facilities = list
      },
      addToSelectedFilters (state, selectedFilter) {
        state.selectedFilters = state.selectedFilters.push(selectedFilter)
      }
    }
  })
  // END: Vuex store to contain ajax call for houses (to use globally)

  // BEGIN: markers for map from houses json
  let vm = new Vue({
    store,
    el: '#markers',

    created () {
      this.$store.dispatch('getList')
    },

    computed: {
      locations: function() {
        var homes = this.$store.getters.facilities;
        var selectedFilters = this.$store.getters.selectedFilters;
        console.log(selectedFilters)
        var locations = [];

        for(var i = 0; i < homes.length; i++) {
          if(selectedFilters.length >= 1) {
            var filterArray = homes[i].filters.map(function (filter) {
              return filter.filter;
            });

            if(selectedFilters.every(elem => filterArray.indexOf(elem) > -1)) {
              var details = {};
              details.title = homes[i].property_description;
              details.lat = homes[i].latitude;
              details.lng = homes[i].longitude;
              details.imageUrl = homes[i].images[0].image;
              details.id = homes[i].id;
              details.price = homes[i].price;
              details.description = homes[i].name;
              locations.push(details);
            }
          } else {
            var details = {};
            details.title = homes[i].property_description;
            details.lat = homes[i].latitude;
            details.lng = homes[i].longitude;
            details.imageUrl = homes[i].images[0].image;
            details.id = homes[i].id;
            details.price = homes[i].price;
            details.description = homes[i].name;
            locations.push(details);
          }
        }
        return locations;
      }
    }
  })
  // END: markers for map from houses json

  // BEGIN: map display & define markers
  Vue.component('vue-map', {
    template: '#map',
    props: {
      markers: {
        type: Array,
        default: []
      }
    },

    option: {
      type: Object,
      default: {
        zoom: 12,
        center: {lat: 37.769436, lng: -122.447662},
      }
    },

    data: function() {
      return {
        map: {}
      }
    },

    mounted: function() {
      let el = this.$el;
      let bounds = new google.maps.LatLngBounds();

      this.map = new google.maps.Map(el, this.option);

      for (let i = 0; i < this.markers.length; i++) {
        let position = new google.maps.LatLng(this.markers[i].lat, this.markers[i].lng);
        bounds.extend(position);
        this.setMarker(this.markers[i]);
      }

      this.map.fitBounds(bounds);
    },

    methods: {
      // set marker
      // @param {Object} pos
      formatPrice: function(value) {
        let val = (value/1).toFixed(2)
        return val;
      },

      setMarker(pos) {
        let latlng = new google.maps.LatLng(pos.lat, pos.lng);
        let marker = new google.maps.Marker({
          position: latlng,
          map: this.map,
          title: pos.title,
          icon: {
              url: 'http://localhost:3000/icon/house_icon.svg',
              scaledSize: new google.maps.Size(20, 20), // scaled size
          },
          description: pos.description
        })
        let infoWindow = new google.maps.InfoWindow();
        infoWindow.setContent('<div class="map__info"><a href="houses/' + pos.id + '"> <img width="120" height="90" src=' + pos.imageUrl + '> </a> <p>' + pos.description + '<br>' + '$' + this.formatPrice(pos.price) + '</p> </div>');

        // // Setup event for marker
        google.maps.event.addListener(marker, 'click', () => {
          infoWindow.open(this.map, marker);
        });

        // google.maps.event.addListener(marker, 'mouseout', () => {
        //   infoWindow.close(this.map, marker);
        // });

        google.maps.event.addListener(marker, 'click', () => {
          console.log("abc");
        });
      }
    }
  })
  // END: map display & define markers

  // BEGIN: houses display for right column & filter methods
  var app = new Vue({
    store,
    el: '#app',
    data: {
      sortAttribute: 'name',
      sortAscending: true,
      priceFilter: '',
      distanceFilter: '',
    },

    created () {
      this.$store.dispatch('getList')
    },

    methods: {
      filterHouses: function(house) {
        var selectedFilters = this.$store.getters.selectedFilters;
        if(selectedFilters.length >= 1) {
          var filterArray = house.filters.map(function (filter) {
            return filter.filter;
          });
          return selectedFilters.every(elem => filterArray.indexOf(elem) > -1)
        } else {
          return true;
        }
      },

      setSortAttribute: function(inputAttribute) {
        if(inputAttribute !== this.sortAttribute) {
          this.sortAscending = true;
        } else {
          this.sortAscending = !this.sortAscending;
        }
        this.sortAttribute = inputAttribute;
      },

      formatPrice: function(value) {
        let val = (value/1).toFixed(2)
        return val;
      }
    },

    computed: {
      modifiedHouses: function() {
        return this.$store.getters.facilities;
      }
    }
  });
  // END: houses display for right column & filter methods

});

