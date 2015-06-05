require 'spec_helper'

describe Length do
  context "Equality" do
    it "should be equal to itself" do
      expect(Length.new(10, Length::UNIT_MILLIMETER)).to eq(Length.new(10, Length::UNIT_MILLIMETER))
    end

    it "should not be equal to other" do
      expect(Length.new(10, Length::UNIT_MILLIMETER)).to_not eq(Length.new(11, Length::UNIT_MILLIMETER))
    end

    it "with 10 cm should return 100" do
      expect(Length.new(10, Length::UNIT_CENTIMETER)).to eq(Length.new(100, Length::UNIT_MILLIMETER))
    end

    it "with 10.1 m should return 1010" do
      expect(Length.new(10.1, Length::UNIT_METER)).to eq(Length.new(1010, Length::UNIT_CENTIMETER))
    end
  end
end
