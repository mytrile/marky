begin
  require 'maruku' unless defined?(::Maruku)
rescue LoadError
  puts "Maruku is not installed. Please, do $ [sudo] gem install bluecloth"
end

module Marky
  module Adapters
    module Maruku
      extend self
      def to_html(string)
        ::Maruku.new(string).to_html
      end
    end
  end
end