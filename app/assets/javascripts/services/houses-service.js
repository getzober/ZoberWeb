class HousesService {
  static async search(params) {
    let houses = await axios.get('/api/v1/houses', params)
    return houses
  }
}

