#Represents metric unit of length
class Unit
  MILLIMETER = "mm"
  METER = "m"
  CENTIMETER = "cm"
  attr_reader :name
  def initialize(unit)
    @name = unit
  end
  def convert_to_millimeter
    return value_in_mm = 1000 if self.name == METER
    return value_in_mm = 10 if self.name ==  CENTIMETER
    return value_in_mm = 1  if self.name == MILLIMETER
  end
end