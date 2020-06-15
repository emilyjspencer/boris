require_relative 'bike'
require_relative 'van'

class DockingStation

    attr_reader  :bikes, :capacity, :van

   DEFAULT_CAPACITY = 5

  def initialize(capacity = DEFAULT_CAPACITY, van = Van.new )
    @bikes = []
    @capacity = capacity
    @van = van
  end 

  def dock(bike)
    fail "Unable to dock bike. Station is at full capacity" if full?
    @bikes.push(bike)
  end 


  def release_bike
    fail "No bikes available" if empty?
    if broken?
      fail "Unable to release bike"
      @van.collect_from_docking_station(@bikes.pop)
    else
      @bikes.pop
    end 
  end 

  def dock_repaired_bike(bike)
    @bikes.push(@van.deliver_working_bike_to_docking_station(bike))
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