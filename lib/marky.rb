$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'adapters') 
# Marky is simple wrapper for converting strings/text to html using different markdown processors.
module Marky
  extend self

  # Gets the default adapter. Sets it to RDiscount if adapter is not specified
  def adapter
    return @adapter if @adapter
    self.adapter = :rdiscount
    @adapter
  end
   
  # Sets the markdown processor and requires the adapter. 
  # @param [String, Symbol] name of the adapter 
  def adapter=(adapter_name)
    case adapter_name
    when Symbol, String
      require "adapters/#{adapter_name}"
      @adapter = Marky::Adapters.const_get("#{adapter_name.to_s.capitalize}")
    else
      raise "Missing adapter #{adapter_name}"
    end
  end

  # Compiles the string into HTML. 
  # @param [String] the string which will be compiles 
  def to_html(string)
    adapter.to_html(string)
  end

end