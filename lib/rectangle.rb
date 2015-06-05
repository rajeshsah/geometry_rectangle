#Calculating the perimeter and area of a rectangle
class Rectangle

	def initialize(length,breadth)
		@length = length.value_in_mm
		@breadth = breadth.value_in_mm
	end

	def perimeter
	  (2*(@length + @breadth)).to_s + " mm"
	end   

end 