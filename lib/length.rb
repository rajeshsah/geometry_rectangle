#This represents one dimensional length in matric unit
class Length
  attr_reader :value, :unit
  alias_method :eql?, :==

  def initialize(unit, value)
    @value = value
    @unit = unit
  end

  def self.initialize_in_cm(value)
    new(Unit.new(Unit::UNIT_CENTIMETER), value)
  end

  def self.initialize_in_m(value)
    new(Unit.new(Unit::UNIT_METER), value)
  end

  def self.initialize_in_mm(value)
    new(Unit.new(Unit::UNIT_MILLIMETER), value)
  end

  def ==(other_length)
    raise ArgumentError unless (other_length && self.class == other_length.class)
    (@unit.convert_to_millimeter * value == other_length.unit.convert_to_millimeter * other_length.value)
  end

  def +(other_length)
    Length.initialize_in_mm(@unit.convert_to_millimeter * value + other_length.unit.convert_to_millimeter * other_length.value)
  end

  def *(number)
    Length.initialize_in_mm(@unit.convert_to_millimeter * value * number)
  end

  def hash
    value.hash
  end
end