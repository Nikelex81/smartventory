
class Smartventory::ApiManager

    BASE_URL = "https://akashraj.tech/corona/api"
    def self.get_info
    url = BASE_URL
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    res = JSON.parse(response.body)
    results = res["countries_stat"]

    array = []
    results.each do |result|
        new_hash = {
            country: result["country_name"]
        }
    array << new_hash
    end
    Smartventory::Product.mass_create_from_api(array)
    
    end

end