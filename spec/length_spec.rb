require 'spec_helper'

describe Length do
  context "Equality" do
    it "should be equal to itself" do
      length = Length.new(10, Length::UNIT_MILLIMETER)
      expect(length).to eq(length)
    end

    it "with 10mm should be equal to length with 1cm in terms of hash" do
      length_hash1 = Length.new(10, Length::UNIT_MILLIMETER).hash
      length_hash2 = Length.new(10, Length::UNIT_CENTIMETER).hash
      expect(length_hash1).to eq(length_hash2)
    end

    it "with 10 mm should not be equal to length with 11 mm" do
      expect(Length.new(10, Length::UNIT_MILLIMETER)).to_not eq(Length.new(11, Length::UNIT_MILLIMETER))
    end

    it "with 10 cm should be equal to 100 mm" do
      expect(Length.new(10, Length::UNIT_CENTIMETER)).to eq(Length.new(100, Length::UNIT_MILLIMETER))
    end

    it "with 10.1 m should be equal to 1010 cm" do
      expect(Length.new(10.1, Length::UNIT_METER)).to eq(Length.new(1010, Length::UNIT_CENTIMETER))
    end
  end

  context "Add" do
    it "should be equal same when lenght of 0 m is added" do
      length = Length.new(10, Length::UNIT_MILLIMETER)
      expect(length + Length.new(0, Length::UNIT_METER)).to eq(length)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.new(10, Length::UNIT_MILLIMETER)
      length2 = Length.new(5, Length::UNIT_MILLIMETER)
      length3 = Length.new(15, Length::UNIT_MILLIMETER)
      expect(length1 + length2).to eq(length3)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.new(10.1, Length::UNIT_METER)
      length2 = Length.new(5, Length::UNIT_CENTIMETER)
      length3 = Length.new(10.15, Length::UNIT_METER)
      expect(length1 + length2).to eq(length3)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.new(10, Length::UNIT_METER)
      length2 = Length.new(5, Length::UNIT_MILLIMETER)
      length3 = Length.new(1000.5, Length::UNIT_CENTIMETER)
      expect(length1 + length2).to eq(length3)
    end
  end

  context "Multiplication with integer" do
    it "should be equal same when integer 1 is multiplied" do
      length = Length.new(10, Length::UNIT_MILLIMETER)
      expect(length * 1).to eq(length)
    end

    it "with 10m should be equal to length with 20m when integer 2 is multiplied" do
      length1 = Length.new(10, Length::UNIT_METER)
      length2 = Length.new(20, Length::UNIT_METER)
      expect(length1 * 2).to eq(length2)
    end

    it "with 100cm should be equal to length with 5m when integer 5 is multiplied" do
      length1 = Length.new(100, Length::UNIT_CENTIMETER)
      length2 = Length.new(5, Length::UNIT_METER)
      expect(length1 * 5).to eq(length2)
    end
  end
end
