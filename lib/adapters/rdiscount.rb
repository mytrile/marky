begin
  require 'rdiscount' unless defined?(::RDiscount)
rescue LoadError
  puts "RDiscount is not installed. Please, do $ [sudo] gem install rdiscount"
end

module Marky
  module Adapters
    module Rdiscount
      extend self
      def to_html(string)
        ::RDiscount.new(string).to_html
      end
    end
  end
end
