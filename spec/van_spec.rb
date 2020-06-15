require 'van'

describe Van do

  let(:van) { Van.new }
  let(:bike) { double(:bike, working?: true) }

  describe '#collect_from_docking_station' do
    it 'collects broken bikes from the docking station and puts them into a bikes container' do
      allow(bike).to receive(:working?).and_return(false)
      van.collect_from_docking_station(bike)
      expect(van.bikes).to include(bike)
     end
  end

  describe "#deliver_to_garage" do
    it 'delivers a bike to the garage to be fixed' do
      van.collect_from_docking_station(bike)
      van.deliver_to_garage(bike)
      expect(van.bikes).not_to include(bike)
    end 
  end

end