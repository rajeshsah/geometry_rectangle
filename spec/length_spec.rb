require 'spec_helper'

describe Length do
  context "initialize" do
    it "with 10 mm should return 10" do
      expect(Length.new(10,"mm").value_in_mm).to eq(10)
    end

    it "with 10 cm should return 100" do
      expect(Length.new(10,"cm").value_in_mm).to eq(100)
    end

    it "with 10.1 m should return 10100" do
      expect(Length.new(10.1,"m").value_in_mm).to eq(10100)
    end
  end
end
