require 'dockingstation'

describe DockingStation do 
    
  describe '#release_bike' do

    let(:bike) { double(:bike) }
    
    it { is_expected.to respond_to :release_bike }

    it 'can release a bike' do
      dockingstation = DockingStation.new
      expect(dockingstation.release_bike(bike)).to eq bike 
    end 
  end 

end 