require 'blazing-passenger/recipes/passenger_restart'

describe Blazing::Recipe::PassengerRestart do

  it 'is a blazing recipe' do
    Blazing::Recipe::PassengerRestart.superclass.should be Blazing::Recipe
  end

  describe 'run' do

    before :each do
      @recipe = Blazing::Recipe::PassengerRestart.new
      @recipe.stub(:info)
    end

    it 'touches tmp/restart.txt' do
      @recipe.should_receive(:system).with("touch tmp/restart.txt")
      @recipe.run
    end

  end

end
