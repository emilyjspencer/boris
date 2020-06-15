require 'van'

describe Van do

  let(:van) { Van.new }
  let(:bike) { double(:bike, working?: true) }

  describe '#collect' do
    it 'collects broken bikes from the docking station and puts them into a bikes container' do
      allow(bike).to receive(:working?).and_return(false)
      van.collect(bike)
      expect(van.bikes).to include(bike)
     end
  end

  describe "#deliver" do
    it 'delivers a bike to be fixed' do
      van.collect(bike)
      van.deliver(bike)
      expect(van.bikes).not_to include(bike)
    end 
  end

end