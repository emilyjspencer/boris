require 'van'
require 'garage'

describe Van do

  let(:van) { Van.new }
  let(:garage) { Garage.new }
  let(:dockingstation) { DockingStation.new }
  let(:bike) { instance_double("bike", working?: true) }

  describe '#collect_from_docking_station' do
    it 'collects broken bikes from the docking station and puts them into a bikes container' do
      allow(bike).to receive(:working?).and_return(false)
      van.collect_from_docking_station(bike)
      expect(van.bikes_in_van).to include(bike)
     end
  end

  describe '#deliver_to_garage' do
    it 'delivers a bike to the garage to be fixed' do
      allow(bike).to receive(:working?).and_return false
      van.collect_from_docking_station(bike)
      van.deliver_to_garage(bike)
      expect(van.bikes_in_van).not_to include(bike)
    end 
  end

  describe '#collect_working_bike_from_garage' do
    it 'collects a working bike from the garage to bring back to docking station' do
      van.collect_working_bike_from_garage(bike)
      expect(van.bikes_in_van).to include(bike)
    end 
  end 

  describe '#deliver_working_bike_to_docking_station' do
    it 'delivers a working bike to the docking station to be released' do
      van.collect_working_bike_from_garage(bike)
      van.deliver_working_bike_to_docking_station(bike)
      expect(van.bikes_in_van).not_to include(bike)
    end 
  end 

end