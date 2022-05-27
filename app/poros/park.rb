class Park
  attr_reader :name,
              :description,
              :directions,
              :hours

  def initialize(data)
    @name = data[:name]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @hours = data[:operatingHours]
  end
end
