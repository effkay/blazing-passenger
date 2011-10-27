require 'httparty'
require 'blazing/recipe'

class Blazing::Recipe::PassengerKickstart < Blazing::Recipe

  def run(target_options = {})
    super target_options

    if @options && @options.has_key?(:url)
      logger.info "Kickstarting #{@options[:url]}"
      HTTParty.get(@options[:url])
    else
      logger.error "No URL was specified for Passenger Kickstart"
    end
  rescue
    logger.error "Unable to perform a GET request on #{@options[:url]}"
  end

end
