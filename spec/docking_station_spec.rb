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

    it 'throws an error if the user tries to release a bike when there is no bike to release' do
      expect { dockingstation.release_bike }.to raise_error "No bikes available"
    end 
  end 

  describe '#dock' do
    it 'can dock a bike' do
      dockingstation.dock(bike)
      expect(dockingstation.bikes.length).to eq 1
    end

    it 'throws an error if a user tries to dock a bike when the docking station is at full capacity' do
      5.times { dockingstation.dock(bike) } 
      expect { dockingstation.dock(bike) }.to raise_error "Unable to dock bike. Station is at full capacity"
    end 
  end  

end 