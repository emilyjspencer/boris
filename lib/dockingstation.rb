
class DockingStation

    attr_reader :bikes

 

  def initialize
    @bikes = []
  end 

  def dock(bike)
    fail "Unable to dock bike. Station is at full capacity" if full?
    @bikes.push(bike)
  end 


  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end 

  private

  def full?
    return true if @bikes.length >= 5
  end

  def empty?
    return true if @bikes.length == 0
  end 


end 