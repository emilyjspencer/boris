require 'bike'

describe Bike do  

  describe 'working?' do

    it { is_expected.to respond_to :working? }

    it "works" do
      bike = Bike.new
      expect(bike.working?).to eq(true)
    end

  end

end 