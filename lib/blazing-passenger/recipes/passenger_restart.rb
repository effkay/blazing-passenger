require 'blazing/recipe'

class Blazing::Recipe::PassengerRestart < Blazing::Recipe

  def run(target_options = {})
    super target_options

    logger.info 'Restarting passenger'
    Dir.mkdir('tmp') unless File.exists? 'tmp'
    system 'touch tmp/restart.txt'
  end

end
