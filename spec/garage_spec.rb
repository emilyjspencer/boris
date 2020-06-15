require 'garage'

describe Garage do

  let(:garage) { Garage.new }
  let(:bike) { instance_double("bike", working?: false) }

  describe '#repair' do
    it 'repairs a bike' do
      allow(bike).to receive(:repair_bike)
      allow(bike).to receive(:working?).and_return true
      garage.add_to_repairs_queue(bike)
      garage.repair
      expect(bike.working?).to eq(true)
    end
  end
end 