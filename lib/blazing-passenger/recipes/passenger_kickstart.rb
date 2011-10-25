require 'httparty'
require 'blazing/recipe'

class Blazing::Recipe::PassengerKickstart < Blazing::Recipe

  def run
    if @options && @options.has_key?(:url)
      info "Kickstarting #{@options[:url]}"
      HTTParty.get(@options[:url])
    else
      error "No URL was specified for Passenger Kickstart"
    end
  rescue
    error "Unable to perform a GET request on #{@options[:url]}"
  end

end
