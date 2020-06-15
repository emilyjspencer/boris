require 'dockingstation'

describe DockingStation do
    
    let(:dockingstation) { DockingStation.new }
    let(:bike) { instance_double("bike", working?: true) }
  
  
    
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

    it 'throws an error if the user tries to release a bike that is broken' do
      allow(bike).to receive(:working?).and_return(false)
      dockingstation.dock(bike)
      expect { dockingstation.release_bike }.to raise_error 'Unable to release bike'
    end 
  end 

  describe '#dock' do
    it 'can dock a bike' do
      dockingstation.dock(bike)
      expect(dockingstation.bikes.length).to eq 1
    end

    it 'throws an error if a user tries to dock a bike when the docking station is at full capacity' do
      DockingStation::DEFAULT_CAPACITY.times { dockingstation.dock(bike) } 
      expect { dockingstation.dock(bike) }.to raise_error "Unable to dock bike. Station is at full capacity"
    end 
  end  


  describe '#dock_repaired_bike' do
    it 'can dock a bike that has been repaired' do
      dockingstation.dock_repaired_bike(bike)
      expect(dockingstation.bikes.length).to eq 1
    end 
  end 

  describe '#capacity' do
    it 'has a default capacity' do
      expect(dockingstation.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end 
  end

end 