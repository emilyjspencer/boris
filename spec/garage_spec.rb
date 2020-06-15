require 'garage'

describe Garage do

  let(:garage) { Garage.new }
  let(:bike) { double(:bike, working?: false) }

  describe '#repair' do
    it 'repairs a bike' do
      allow(bike).to receive(:working?).and_return true
      garage.repair(bike)
      expect(bike.working?).to eq(true)
    end

  end
end 