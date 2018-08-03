class HousesService {
  static async search(params={}) {
    let houses = await axios.get('/api/v1/houses', {
      params: {
        lat: options.lat,
        lng: options.lng,
        distance: options.distance,
      },
    })
    debugger
    return houses
  }
}

