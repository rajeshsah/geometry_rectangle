require 'spec_helper'

describe Rectangle do
  context "Perimeter" do
    it "should be equal to 40 mm for l = 10 mm and b =10 mm" do
      length = Length.new(10, Length::UNIT_MILLIMETER)
      breadth = Length.new(10, Length::UNIT_MILLIMETER)
      expected_perimeter = Length.new(40, Length::UNIT_MILLIMETER)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end

    it "should be equal 400 mm to for l = 10 cm and b =10 cm" do
      length = Length.new(10, Length::UNIT_CENTIMETER)
      breadth = Length.new(10, Length::UNIT_CENTIMETER)
      expected_perimeter = Length.new(400, Length::UNIT_MILLIMETER)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end

    it "should be equal to 40000 mm for l = 10 m and b =10 m" do
      length = Length.new(10, Length::UNIT_METER)
      breadth = Length.new(10, Length::UNIT_METER)
      expected_perimeter = Length.new(40000, Length::UNIT_MILLIMETER)
      expect(Rectangle.new(length, breadth).perimeter).to eq(expected_perimeter)
    end
  end
end

