require 'blazing-passenger/recipes/passenger_kickstart'

describe Blazing::Recipe::PassengerKickstart do

  it 'is a blazing recipe' do
    Blazing::Recipe::PassengerKickstart.superclass.should be Blazing::Recipe
  end

  describe 'run' do

    before :each do
      @recipe = Blazing::Recipe::PassengerKickstart.new
      @recipe.stub(:info)
    end

    it 'logs an error message if no url was provided' do
      @recipe.should_receive(:error)
      @recipe.run
    end

    it 'performs a get request if the url was provided' do
      url = 'http://www.google.com'
      @recipe.instance_variable_set('@options', { :url => url })
      HTTParty.should_receive(:get).with(url)
      @recipe.run
    end

    it 'logs an error message if the url is invalid' do
      url = 'blah'
      @recipe.should_receive(:error).with("Unable to perform a GET request on #{url}")
      @recipe.instance_variable_set('@options', { :url => url })
      @recipe.run
    end

  end

end
