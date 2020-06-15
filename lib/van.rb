require_relative 'garage'

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
      #@bikes_in_van.pop
      @garage.add_to_repairs_queue(@bikes_in_van.pop)
    end

end