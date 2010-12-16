$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib') 

require 'minitest/spec'
require 'marky'

MiniTest::Unit.autorun

describe Marky do
  before do
    Marky.adapter
  end
 
  describe "when I don't specify adapter" do
    it "the default adapter should be rdiscount" do
      Marky.adapter.must_equal Marky::Adapters::Rdiscount
    end
  end

  describe "when I use different when I don't specify adapter" do

    it "returns proper html when using RDiscount" do
      Marky.adapter = :rdiscount
      Marky.to_html("Hello, Marky").must_equal "<p>Hello, Marky</p>\n"
    end

    it "returns proper html when using Maruku" do
      Marky.adapter = :maruku
      Marky.to_html("Hello, Marky").must_equal "<p>Hello, Marky</p>"
    end

    it "returns proper html when using BlueCloth" do
      Marky.adapter = :bluecloth
      Marky.to_html("Hello, Marky").must_equal "<p>Hello, Marky</p>"
    end

    it "returns proper html when using Kramdown" do
      Marky.adapter = :kramdown
      Marky.to_html("Hello, Marky").must_equal "<p>Hello, Marky</p>\n"
    end

  end
end
