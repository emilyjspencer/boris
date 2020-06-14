class Van

  attr_reader :bikes
  
    def initialize
      @bikes = []
    end
  
    def collect_bike(bike)
      @bikes.push(bike)
    end

end