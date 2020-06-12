require 'dockingstation'

describe DockingStation do 
    let(:bike) { double(:bike) }
  
    
  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'can release a bike' do
      dockingstation = DockingStation.new
      expect(dockingstation.release_bike(bike)).to eq bike 
    end 

    it 'can release a bike that works' do
      dockingstation = DockingStation.new
      bike = double('bike', {working?: 'true'})
      dockingstation.release_bike(bike)
      expect(bike.working?).to eq('true')
    end
  end 

end 