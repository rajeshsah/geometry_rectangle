require 'spec_helper'

describe Length do
  context "Equality" do
    it "should be equal to itself" do
      length = Length.initialize_in_mm(10)
      expect(length).to eq(length)
    end

    it "should not be equal to nil and it should raise an argument error" do
      length = Length.initialize_in_mm(10)
      expect{length == nil}.to raise_error(ArgumentError)
    end

    it "should not be equal to other random object and it should raise an argument error" do
      length = Length.initialize_in_mm(10)
      expect{length == 5}.to raise_error(ArgumentError)
    end   

    it "with 10mm should be equal to length with 1cm in terms of hash" do
      length_hash1 = Length.initialize_in_mm(10).hash
      length_hash2 = Length.initialize_in_cm(10).hash
      expect(length_hash1).to eq(length_hash2)
    end

    it "with 10 mm should not be equal to length with 11 mm" do
      expect(Length.initialize_in_mm(10)).to_not eq(Length.initialize_in_mm(11))
    end

    it "with 10 cm should be equal to 100 mm" do
      expect(Length.initialize_in_cm(10)).to eq(Length.initialize_in_mm(100))
    end

    it "with 10.1 m should be equal to 1010 cm" do
      expect(Length.initialize_in_m(10.1)).to eq(Length.initialize_in_cm(1010))
    end
  end

  context "Add Two Lengths" do
    it "should be equal same when lenght of 0 m is added" do
      length = Length.initialize_in_mm(10)
      expect(length + Length.initialize_in_m(0)).to eq(length)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.initialize_in_mm(10)
      length2 = Length.initialize_in_mm(5)
      length3 = Length.initialize_in_mm(15)
      expect(length1 + length2).to eq(length3)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.initialize_in_m(10.1)
      length2 = Length.initialize_in_cm(10)
      length3 = Length.initialize_in_m(10.2)
      expect(length1 + length2).to eq(length3)
    end

    it "with 10 mm should return length 15 mm when length with 5mm is added" do
      length1 = Length.initialize_in_m(10)
      length2 = Length.initialize_in_mm(5)
      length3 = Length.initialize_in_cm(1000.5)
      expect(length1 + length2).to eq(length3)
    end
  end

  context "Multiplication with integer" do
    it "should be equal same when integer 1 is multiplied" do
      length = Length.initialize_in_mm(10)
      expect(length * 1).to eq(length)
    end

    it "with 10m should be equal to length with 20m when integer 2 is multiplied" do
      length1 = Length.initialize_in_m(10)
      length2 = Length.initialize_in_m(20)
      expect(length1 * 2).to eq(length2)
    end

    it "with 100cm should be equal to length with 5m when integer 5 is multiplied" do
      length1 = Length.initialize_in_cm(100)
      length2 = Length.initialize_in_m(5)
      expect(length1 * 5).to eq(length2)
    end
  end
end
