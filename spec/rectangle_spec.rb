require 'spec_helper'

describe Rectangle do
  context "Perimeter" do
  
    it "should be equal to 40 mm for l = 10 mm and b =10 mm" do
      length = Length.new(10,"mm")
      breadth = Length.new(10,"mm")
      expect(Rectangle.new(length, breadth).perimeter).to eq( "40 mm")
    end

    it "should be equal 400 mm to for l = 10 cm and b =10 cm" do
      length = Length.new(10,"cm")
      breadth = Length.new(10,"cm")
      expect(Rectangle.new(length, breadth).perimeter).to eq( "400 mm")
    end

    it "should be equal to 40000 mm for l = 10 m and b =10 m" do
      length = Length.new(10,"m")
      breadth = Length.new(10,"m")
      expect(Rectangle.new(length, breadth).perimeter).to eq( "40000 mm")
    end
  end
end

