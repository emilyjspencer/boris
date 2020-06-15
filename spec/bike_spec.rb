require 'bike'

describe Bike do  

  let(:bike) { Bike.new }

  describe '#working?' do

    it { is_expected.to respond_to :working? }

    it 'works' do
      expect(bike.working?).to eq(true)
    end

  end

  describe '#report_broken' do
    it 'can be reported as broken' do
      bike.report_broken
      expect(bike.broken).to eq true
    end 
  end 

  describe '#break' do
    it 'can break' do
      bike.break
      expect(bike.broken).to eq true
    end 
  end 

  describe '#repair_bike' do
    it 'can be repaired' do
      bike.repair_bike
      expect(bike.broken).to eq false
    end 
  end 

end 