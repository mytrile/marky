begin
  require 'kramdown' unless defined?(::Kremdown)
rescue LoadError
  puts "Kramdown is not installed. Please, do $ [sudo] gem install kramdown"
end

module Marky
  module Adapters
    module Kramdown
      extend self
      def to_html(string)
        ::Kramdown::Document.new(string).to_html
      end
    end
  end
end
