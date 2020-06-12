
class DockingStation

    attr_reader  :bikes, :capacity

   DEFAULT_CAPACITY = 5

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end 

  def dock(bike)
    fail "Unable to dock bike. Station is at full capacity" if full?
    @bikes.push(bike)
  end 


  def release_bike
    fail "No bikes available" if empty?
    fail "Unable to release bike" if broken?
    @bikes.pop
  end 

  private

  def full?
    return true if @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    return true if @bikes.length == 0
  end 

  def broken?
    return true if !@bikes[-1].working? 
  end 


end 