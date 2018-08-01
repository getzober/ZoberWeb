class HousesService {
  static async search(query) {
    console.log(query)
    let houses = await axios.get(`/api/v1/houses/?search=${query}`)
    return houses
  }
}

