module Blazing
  module Passenger
    class Restart < Blazing::Recipe

      def initialize(name, options = {})
        super(name, options)
      end

      def run
        system 'touch tmp/restart.txt'
      end

    end
  end
end
