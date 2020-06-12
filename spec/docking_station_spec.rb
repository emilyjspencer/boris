require 'dockingstation'

describe DockingStation do
    
    let(:dockingstation) { DockingStation.new }
    let(:bike) { double(:bike, working?: true) }
  
    
  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'can release a bike' do
      expect(dockingstation.release_bike(bike)).to eq bike 
    end 

    it 'can release a bike that works' do
      dockingstation.release_bike(bike)
      expect(bike.working?).to eq(true)
    end
  end 

  describe '#dock' do
    it 'can dock a bike' do
      expect(dockingstation.dock(bike)).to eq bike
    end
  end  

end 