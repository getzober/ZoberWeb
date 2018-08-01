class HousesService {
  static async search(query) {
    let houses = await axios.get(`/api/v1/houses/?search=${query}`)
    return houses
  }
}

