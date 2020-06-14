require 'van'

describe Van do

  let(:van) { Van.new }
  let(:bike) { double(:bike, working?: true) }

  describe '#collect_bike' do

    it 'collects broken bikes from the docking station and puts them into a bikes container' do
      allow(bike).to receive(:working?).and_return(false)
      van.collect_bike(bike)
      expect(van.bikes).to include(bike)
     end
  end
end