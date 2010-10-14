begin
  require 'bluecloth' unless defined?(::BlueCloth)
rescue LoadError
  puts "BlueCloth is not installed. Please, do $ [sudo] gem install bluecloth"
end
module Marky
  module Adapters
    module Bluecloth
      extend self
      def to_html(string)
        ::BlueCloth.new(string).to_html
      end
    end
  end
end