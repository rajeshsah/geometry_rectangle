#it represents lenght in mm
class Length
  UNIT_MILLIMETER = "mm"
  UNIT_METER = "m"
  UNIT_CENTIMETER = "cm"
  attr_reader :value, :unit
  def initialize(value, unit)
    @unit = unit
    @value = value * 1000 if unit == UNIT_METER
    @value = value * 10 if unit ==  UNIT_CENTIMETER
    @value = value  if unit == UNIT_MILLIMETER
  end

  def ==(other_length)
    (self.value == other_length.value)
  end
end
