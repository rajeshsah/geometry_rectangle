require 'spec_helper'

describe Rectangle do
  context "Perimeter" do
    it "should be equal to 40 mm for l = 10 mm and b =10 mm" do
      length = Length.initialize_in_mm(10)
      breadth = Length.initialize_in_mm(10)
      expected_perimeter = Length.initialize_in_mm(40)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end

    it "should be equal 400 mm to for l = 10 cm and b =10 cm" do
      length = Length.initialize_in_cm(10)
      breadth = Length.initialize_in_cm(10)
      expected_perimeter = Length.initialize_in_mm(400)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end

    it "should be equal to 40000 mm for l = 10 m and b =10 m" do
      length = Length.initialize_in_m(10)
      breadth = Length.initialize_in_m(10)
      expected_perimeter = Length.initialize_in_mm(40000)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end
  end
end

