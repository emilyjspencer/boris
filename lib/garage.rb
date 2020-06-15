require_relative 'bike'

class Garage

  attr_reader :repairs

 def initialize
  @repairs = []
 end

 def add_to_repairs_queue(bike)
  @repairs.push(bike)
 end

  def repair
    @repairs[-1].repair_bike
  end

  def add_to_repaired_bikes
    @repairs.pop
  end

end 