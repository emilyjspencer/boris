require 'dockingstation'

describe DockingStation do
    
    let(:dockingstation) { DockingStation.new }
    let(:bike) { double(:bike, working?: true) }
  
  
    
  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }


    it 'can release a bike that works' do
      dockingstation.dock(bike)
      dockingstation.release_bike
      expect(bike.working?).to eq true 
    end
  end 

  describe '#dock' do
    it 'can dock a bike' do
      dockingstation.dock(bike)
      expect(dockingstation.bikes.length).to eq 1
    end
  end  

end 