# Represents geometrical rectangle as combination of length-breadth
class Rectangle

	def initialize(length,breadth)
		@length = length.value_in_mm
		@breadth = breadth.value_in_mm
	end

	def perimeter
	  (2*(@length + @breadth)).to_s
	end   

end 