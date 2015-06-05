#Represents metric unit of length
class Unit
  UNIT_MILLIMETER = "mm"
  UNIT_METER = "m"
  UNIT_CENTIMETER = "cm"
  attr_reader :unit_name
  def initialize(unit)
    @unit_name = unit
  end
  def convert_to_millimeter
    return value_in_mm = 1000 if self.unit_name == UNIT_METER
    return value_in_mm = 10 if self.unit_name ==  UNIT_CENTIMETER
    return value_in_mm = 1  if self.unit_name == UNIT_MILLIMETER
  end
end