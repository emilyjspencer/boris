class Van

  attr_reader :bikes
  
    def initialize
      @bikes = []
    end
  
    def collect(bike)
      @bikes.push(bike)
    end

    def deliver(bike)
      @bikes.pop
    end

end