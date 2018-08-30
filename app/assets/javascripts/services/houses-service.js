class HousesService {
  static async search(params={}) {
    let houses = await axios.get('/api/v1/houses', {
      params: {
        lat: params.lat,
        lng: params.lng,
        distance: params.distance,
      },
    })
    return houses
  }
}

