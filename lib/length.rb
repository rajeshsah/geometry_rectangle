#This represents one dimensional length in matric unit
class Length
  UNIT_MILLIMETER = "mm"
  UNIT_METER = "m"
  UNIT_CENTIMETER = "cm"
  attr_reader :value, :unit
  alias_method :eql?, :==

  def initialize(value, unit)
    @unit = unit
    @value = value
  end

  def ==(other_length)
    (convert_to_millimeter(self) == convert_to_millimeter(other_length))
  end

  def +(other_length)
    Length.new((convert_to_millimeter(self) + convert_to_millimeter(other_length)), UNIT_MILLIMETER)
  end

  def *(number)
    Length.new((convert_to_millimeter(self) * number), UNIT_MILLIMETER)
  end

  def hash
    value.hash
  end

  private
    def convert_to_millimeter(length)
      return value_in_mm = length.value * 1000 if length.unit == UNIT_METER
      return value_in_mm = length.value * 10 if length.unit ==  UNIT_CENTIMETER
      return value_in_mm = length.value  if length.unit == UNIT_MILLIMETER
    end
end