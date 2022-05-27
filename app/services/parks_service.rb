class ParksService
  def self.parks_by_state(state)
    response = Faraday.get("https://developer.nps.gov/api/v1/parks?stateCode=#{state}&api_key=70Vie9KinLfetkM4hoVqS3iHQAM49EOK4G2CjXZa")
    JSON.parse(response.body, symbolize_names: true)
  end
end
