class Van

  attr_reader :bikes
  
    def initialize
      @bikes = []
    end
  
    def collect_from_docking_station(bike)
      @bikes.push(bike)
    end

    def deliver_to_garage(bike)
      @bikes.pop
    end

end