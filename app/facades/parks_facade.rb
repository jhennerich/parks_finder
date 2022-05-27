class ParksFacade
  def self.search_by_state(state)
    parks_data = ParksService.parks_by_state(state)

    parks_data[:data].map do |park|
      Park.new(name: park[:fullName],
               description: park[:description],
               directions: park[:directionsInfo],
               hours: park[:operatingHours]
              )
    end
  end
end
