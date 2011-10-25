require 'blazing/recipe'

class Blazing::Recipe::PassengerRestart < Blazing::Recipe

  def run
    info 'Restarting passenger'
    Dir.mkdir('tmp') unless File.exists? 'tmp'
    system 'touch tmp/restart.txt'
  end

end
