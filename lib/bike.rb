
class Bike

  attr_reader :broken

  def initialize
    @broken = false
  end 

  def working?
    !@broken
  end 

  def report_broken
    @broken = true 
  end 

  def repair_bike
    @broken = false
  end

  def break
    @broken = true 
  end 

end 