require_relative 'garage'
require_relative 'bike'

class Van

  attr_reader :bikes_in_van
  
    def initialize(garage = Garage.new)
      @bikes_in_van = []
      @garage = garage
    end
  
    def collect_from_docking_station(bike)
      @bikes_in_van.push(bike)
    end

    def deliver_to_garage(bike)
      @garage.add_to_repairs_queue(@bikes_in_van.pop)
    end

    def collect_working_bike_from_garage(bike)
      @bikes_in_van.push(bike)
    end 

end