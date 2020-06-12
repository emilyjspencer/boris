
class DockingStation

    attr_reader :bikes

  def initialize
    @bikes = []
  end 

  def dock(bike)
    @bikes.push(bike)
  end 


  def release_bike(bike)
    bike
  end 


end 