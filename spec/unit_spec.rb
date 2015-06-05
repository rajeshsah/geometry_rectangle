require 'spec_helper'

describe Unit do
  context "Conversion" do
  	it "millimeter should return factor 1 if converted to millimeter" do
      unit = Unit.new(Unit::UNIT_MILLIMETER)
      expect(unit.convert_to_millimeter).to eq(1)
  	end

    it "centimeter should return factor 10 if converted to millimeter" do
      unit = Unit.new(Unit::UNIT_CENTIMETER)
      expect(unit.convert_to_millimeter).to eq(10)
    end

    it "meter should return factor 1000 if converted to millimeter" do
      unit = Unit.new(Unit::UNIT_METER)
      expect(unit.convert_to_millimeter).to eq(1000)
    end
  end
end
