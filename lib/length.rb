#it represents lenght in mm
class Length
  attr_reader :value_in_mm
  def initialize(value, unit)
    @value_in_mm = value * 1000 if unit == "m"
    @value_in_mm = value * 10 if unit == "cm"
    @value_in_mm = value  if unit == "mm"
  end
end
