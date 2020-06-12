
class DockingStation

    attr_reader :bikes

 

  def initialize
    @bikes = []
  end 

  def dock(bike)
    fail "Unable to dock bike. Station is at full capacity" if @bikes.length >= 5
    @bikes.push(bike)
  end 


  def release_bike
    fail "No bikes available" unless @bikes.length >= 1
    @bikes.pop
  end 


end 